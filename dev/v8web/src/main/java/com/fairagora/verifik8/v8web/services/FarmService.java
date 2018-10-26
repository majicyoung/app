package com.fairagora.verifik8.v8web.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmBuyerAssignment;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;
import com.fairagora.verifik8.v8web.data.repo.reg.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fairagora.verifik8.v8web.config.technical.auth.V8LoggedUser;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;
import com.fairagora.verifik8.v8web.services.enhanced.dtomapping.V8EnhancedDtoMapper;

@Service
public class FarmService extends AbstractV8Service {

	@Autowired
	private RegEntityRepository regEntityRepository;

	@Autowired
	private V8EnhancedDtoMapper enhancedMapper;

	@Autowired
	private RegEntityFarmPondRepository regEntityFarmPondRepository;

	@Autowired
	private RegEntityFarmPlotRepository regEntityFarmPlotRepository;

	@Autowired
	protected RegEntityFarmSupplierAssignmentRepository regEntityFarmSupplierRepository;

	@Autowired
	protected RegEntityFarmBuyerAssignmentRepository regEntityFarmBuyerAssignmentRepository;


	@Autowired
	private SYSUserRepository userRepo;


	@Autowired
	private RegEntityFarmDetailsRepository farmDetailsRepository;


	/**
	 * Return a list of Model Enhanced Farms, useful for display form meta data,
	 * in an optimized way
	 *
	 * @return
	 */
	public List<V8Farm>
	listFarms() {
		List<V8Farm> farms = new ArrayList<>();

		// fetch how many staff member we have per farms
		Map<Long, Integer> staffCountPerFarms = new HashMap<>();
		jdbc.query("select REG_ENTITY_FARM_ID, COUNT(REG_ENTITY_ID) from reg_entity_staff GROUP BY REG_ENTITY_FARM_ID ", rs -> {
			staffCountPerFarms.put(rs.getLong(1), rs.getInt(2));
		});

		// fetch how many ponds we have per farm
		Map<Long, Integer> pondsCountPerFarms = new HashMap<>();
		jdbc.query("select REG_ENTITY_FARM_ID, COUNT(ID) from reg_entity_farmaq_ponds GROUP BY REG_ENTITY_FARM_ID ", rs -> {
			pondsCountPerFarms.put(rs.getLong(1), rs.getInt(2));
		});

		// fetch how many plots we have per farm
		Map<Long, Integer> plotsCountPerFarms = new HashMap<>();
		jdbc.query("select REG_ENTITY_FARM_ID, COUNT(ID) from reg_entity_farmag_plots GROUP BY REG_ENTITY_FARM_ID ", rs -> {
			plotsCountPerFarms.put(rs.getLong(1), rs.getInt(2));
		});

		Map<Long, V8Measure> sizesPerFarms = new HashMap<>();
		jdbc.query("select REG_ENTITY_FARM_ID, SIZE,CL_SIZE_UNIT_ID FROM reg_entity_farm_details", rs -> {
			sizesPerFarms.put(rs.getLong(1), new V8Measure().setup(rs.getFloat(2), clQtUnityRepository.findOne(rs.getLong(3))));
		});

		List<RegEntity> farmsEntities = regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_FARM);
		farmsEntities = filterForCurrentUser(farmsEntities);
		for (RegEntity e : farmsEntities) {
			V8Farm f = new V8Farm();
			enhancedMapper.enhance(e, f);
			f.setStaffCount(staffCountPerFarms.getOrDefault(e.getId(), 0));
			f.setPondsCount(pondsCountPerFarms.getOrDefault(e.getId(), 0));
			f.setPlotsCount(plotsCountPerFarms.getOrDefault(e.getId(), 0));
			f.setSize(sizesPerFarms.get(e.getId()));
			farms.add(f);
		}

		return farms;
	}

	/**
	 *
	 * @param farmsEntities
	 * @return
	 */
	private List<RegEntity> filterForCurrentUser(List<RegEntity> farmsEntities) {

		List<RegEntity> filtered = new ArrayList<>();

		// get the technical user
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {

			// load the user entity from the databse, matching the name
			SYSUser user = userRepo.findByEmail(authentication.getName());

			if (user.getRole() != null) {

				switch (user.getRole().getCode()) {
					case SYSRole.SADMIN:
						// as an admin, I have no restriction
						return farmsEntities;
					case SYSRole.coop:
						// Get farm own by the cooperative.
						if (user.getCooperative() == null) break;
						List<RegEntityFarmDetails> farmDetails = farmDetailsRepository.findByCooperativeId(user.getCooperative().getId());
						farmDetails.stream().map(RegEntityFarmDetails::getEntity).forEach(filtered::add);
						return filtered;
					case SYSRole.farm:
						// as an FARM user, I shall see only my own farm, from my
						// user profile, if I have no farm defined, I will see no
						// farm
						if (user.getFarm() == null) break;
						farmsEntities.stream().filter(f -> user.getFarm() != null && f.getId().equals(user.getFarm().getId())).forEach(filtered::add);
						break;
					case SYSRole.country:
						// as a COUNTRY user I shall see the farms from the country
						// defined in my user profile
						farmsEntities.stream().filter(f -> user.getCountry() != null && f.getAddress().getCountry() != null && f.getAddress().getCountry().getId().equals(user.getCountry().getId())).forEach(filtered::add);
						break;
					case SYSRole.supplier:
						//Has supplier I should see the farm i get assign too
						if (user.getSupplier() == null) break;
						List<RegEntityFarmSupplierAssignment> regEntityFarmSupplierAssignments = regEntityFarmSupplierRepository.findBySupplierId(user.getSupplier().getId());
						regEntityFarmSupplierAssignments.stream().map(RegEntityFarmSupplierAssignment::getFarm).forEach(filtered::add);
						return filtered;
					case SYSRole.buyer:
						//Has buyer I should see the farm i get assign too
						if (user.getBuyer() == null) break;
						List<RegEntityFarmBuyerAssignment> regEntityFarmBuyerAssignments  = regEntityFarmBuyerAssignmentRepository.findByBuyerId(user.getBuyer().getId());
						regEntityFarmBuyerAssignments.stream().map(RegEntityFarmBuyerAssignment::getFarm).forEach(filtered::add);
						return filtered;
				}

			}

		}

		return filtered;

	}

	@Transactional
	public void deleteFarm(Long id) {
		regEntityRepository.delete(id);

		Optional<RegEntityFarmDetails> details = farmDetailsRepository.findByEntityId(id);
		details.ifPresent(d -> farmDetailsRepository.delete(d));
	}

	@Transactional
	public List<RegEntityFarmPond> listAllPondsForLoggedUser(V8LoggedUser loggedUser) {
		List<RegEntityFarmPond> regEntityPonds = new ArrayList<>();

		SYSUser user = userRepo.findByEmail(loggedUser.getUsername());
		if (user != null) {
			switch (user.getRole().getCode()) {
			case SYSRole.SADMIN:
				regEntityPonds.addAll(regEntityFarmPondRepository.findAll());
				break;

			case SYSRole.coop:
				if (user.getCooperative() == null) break;
				List<RegEntityFarmDetails> farmDetails = farmDetailsRepository
						.findByCooperativeId(user.getCooperative().getId());
				for (RegEntityFarmDetails f : farmDetails) {
					regEntityPonds.addAll(regEntityFarmPondRepository.findByFarmId(f.getEntity().getId()));
				}
				break;

			case SYSRole.farm:
//				List<V8Farm> farmDetails1 = listFarms();
//				for (V8Farm f : farmDetails1) {
//					regEntityPonds.addAll(regEntityFarmPondRepository.findByFarmId(f.getId()));
//				}
				if (user.getFarm() == null) break;
				regEntityPonds.addAll(regEntityFarmPondRepository.findByFarmId(user.getFarm().getId()));
				break;

			case SYSRole.country:
				List<RegEntity> farms = regEntityRepository
						.findByEntityTypeCodeAndNationalityId(CLAppEntityType.CODE_FARM, user.getCountry().getId());
				for (RegEntity f : farms) {
					regEntityPonds.addAll(regEntityFarmPondRepository.findByFarmId(f.getId()));
				}
				break;
			}
		}

		return regEntityPonds;
	}

	@Transactional
	public List<RegEntityFarmPlot> listAllPlotsForLoggedUser(V8LoggedUser loggedUser) {
		List<RegEntityFarmPlot> regEntityPlots = new ArrayList<>();

		SYSUser user = userRepo.findByEmail(loggedUser.getUsername());
		if (user != null) {
			switch (user.getRole().getCode()) {
			case SYSRole.SADMIN:
				regEntityPlots.addAll(regEntityFarmPlotRepository.findAll());
				break;

			case SYSRole.coop:
				if (user.getCooperative() == null) break;
				List<RegEntityFarmDetails> farmDetails = farmDetailsRepository
						.findByCooperativeId(user.getCooperative().getId());
				for (RegEntityFarmDetails f : farmDetails) {
					regEntityPlots.addAll(regEntityFarmPlotRepository.findByFarmId(f.getEntity().getId()));
				}
				break;

			case SYSRole.farm:
//				List<V8Farm> farmDetails1 = listFarms();
//				for (V8Farm f : farmDetails1) {
//					regEntityPlots.addAll(regEntityFarmPlotRepository.findByFarmId(f.getId()));
//				}
				if(user.getFarm()==null) break;
				regEntityPlots.addAll(regEntityFarmPlotRepository.findByFarmId(user.getFarm().getId()));
				break;

			case SYSRole.country:
				List<RegEntity> farms = regEntityRepository
						.findByEntityTypeCodeAndNationalityId(CLAppEntityType.CODE_FARM, user.getCountry().getId());
				for (RegEntity f : farms) {
					regEntityPlots.addAll(regEntityFarmPlotRepository.findByFarmId(f.getId()));
				}
				break;
			}
		}

		return regEntityPlots;
	}

	@Transactional
	public List<RegEntityFarmPond> listVisiblePoundsForLoggedUser(V8LoggedUser loggedUser) {
		List<RegEntityFarmPond> r = new ArrayList<>();

		SYSUser u = userRepo.findByEmail(loggedUser.getUsername());
		if (u != null) {
			switch (u.getRole().getCode()) {
			case SYSRole.SADMIN:
				r.addAll(regEntityFarmPondRepository.findAll());
				break;

			case SYSRole.coop:
				List<RegEntityFarmDetails> farmDetails = farmDetailsRepository.findByCooperativeId(u.getCooperative().getId());
				for (RegEntityFarmDetails f : farmDetails) {
					r.addAll(regEntityFarmPondRepository.findByFarmId(f.getEntity().getId()));
				}
				break;

			case SYSRole.farm:

				r.addAll(regEntityFarmPondRepository.findByFarmId(u.getFarm().getId()));

				break;

			case SYSRole.country:
				List<RegEntity> farms = regEntityRepository.findByEntityTypeCodeAndNationalityId(CLAppEntityType.CODE_FARM, u.getCountry().getId());
				for (RegEntity f : farms) {
					r.addAll(regEntityFarmPondRepository.findByFarmId(f.getId()));
				}
				break;
			}
		}

		return r;
	}


	@Transactional
	public List<RegEntityFarmSupplierAssignment> listVisibleSuppliersForLoggedUser(V8LoggedUser loggedUser) {
		List<RegEntityFarmSupplierAssignment> r = new ArrayList<>();

		SYSUser u = userRepo.findByEmail(loggedUser.getUsername());
		if (u != null) {
			switch (u.getRole().getCode()) {
				case SYSRole.SADMIN:
					r.addAll(regEntityFarmSupplierRepository.findAll());
					break;

				case SYSRole.coop:
					List<RegEntityFarmDetails> farmDetails = farmDetailsRepository.findByCooperativeId(u.getCooperative().getId());
					for (RegEntityFarmDetails f : farmDetails) {
						r.addAll(regEntityFarmSupplierRepository.findByFarmIdOrderBySupplierName(f.getEntity().getId()));
					}
					break;

				case SYSRole.farm:
					r.addAll(regEntityFarmSupplierRepository.findByFarmIdOrderBySupplierName(u.getFarm().getId()));
					break;

				case SYSRole.country:
					List<RegEntity> farms = regEntityRepository.findByEntityTypeCodeAndNationalityId(CLAppEntityType.CODE_FARM, u.getCountry().getId());
					for (RegEntity f : farms) {
						r.addAll(regEntityFarmSupplierRepository.findByFarmIdOrderBySupplierName(f.getId()));
					}
					break;

			}
		}

		return r;
	}
}

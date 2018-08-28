staging:
	@printf "\033[0;32m>>> Updating staging branch\033[0m\n"
	git checkout staging
	git merge api -m "merging api"
	git push origin
	git checkout api

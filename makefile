staging:
	@printf "\033[0;32m>>> Updating staging branch\033[0m\n"
	git checkout staging
	git merge 1.0 -m "merging 1.0"
	git push origin
	git checkout 1.0

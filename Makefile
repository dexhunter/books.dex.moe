easygit:
	# git branch hexo
	# git checkout hexo
	git add .
	git commit -m "Update."
	git push origin master
	# git push origin hexo
	# git checkout master
com:
ifeq ($(strip $(shell git status --porcelain 2>/dev/null)),)
	@echo "==> Releasing the project"
else
	@echo "==> Building the porject"
	easygit
endif
deploy:
	hexo clean && hexo deploy
clean:
	git branch -d hexo
all:
	com deploy
.PHONY: all
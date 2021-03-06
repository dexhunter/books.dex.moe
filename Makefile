add:
	git add .
	git commit -m "Update" -s
	git push origin master

deploy:
	hexo clean
	hexo deploy

com:
ifeq ($(strip $(shell git status --porcelain 2>/dev/null)),)
	@echo "==> Releasing the project"
else
	@echo "==> Building the porject"
	git add .
	git commit -m "Update."
	git push origin master
endif

clean:
	git branch -d hexo

all: com add deploy

# .PHONY: com easygit

.DEFAULT_GOAL := all
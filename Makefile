com:
	if [ -n "$(git status --porcelain)" ]
	then
  		echo "there are changes"
		easygit
	else
  		echo "no changes"
	fi
easygit:
	git branch hexo
	git checkout hexo
	git add .
	git commit -m "Update."
	git push origin hexo
	git checkout master
deploy:
	hexo clean && hexo deploy
clean:
	git branch -d hexo
.PHONY: com deploy
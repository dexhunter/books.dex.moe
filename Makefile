com:
	git add .
	git commit -m "Update."
	git push origin master
deploy:
	hexo clean && hexo deploy
.PHONY : com deploy
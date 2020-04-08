
http:
	go run main.go

deploy:
	git push origin master && git subtree push --prefix public origin gh-pages

.PHONY: http deploy

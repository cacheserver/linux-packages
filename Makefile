it: build

build:
	docker buildx bake --load dev
deploy:
	docker stack deploy -c docker-stack.yml linux-packages
remove:
	docker stack rm linux-packages
prune:
	docker volume ls --filter=label=com.docker.stack.namespace=linux-packages -q | xargs docker volume rm

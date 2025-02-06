it: build deploy
build:
	docker buildx bake --load dev
deploy:
	docker stack deploy -c docker-stack.yml linux-repository
remove:
	docker stack rm linux-repository
prune:
	docker volume ls --filter=label=com.docker.stack.namespace=linux-repository -q | xargs docker volume rm

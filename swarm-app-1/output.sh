docker network create --driver overlay frontend
docker network create --driver overlay backend
docker service create --name vote --network frontend --replicas 2 -p 80:80 bretfisher/examplevotingapp_vote
docker service create --name redis --network frontend redis:3.2
docker service create --name worker --network backend --network frontend bretfisher/examplevotingapp_worker
docker service create --name db --network backend --mount type=volume,source=db-data,target=/var/lib/postgresql/data --env POSTGRES_HOST_AUTH_METHOD=trust postgres:9.4
docker service update --network-add backend db
docker service create --name result --network backend -p 5001:80 bretfisher/examplevotingapp_result
docker service ls
docker service ps worker
docker service ps vote
docker service ps result
docker service ps redis
docker service ps db
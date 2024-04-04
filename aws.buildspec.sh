source .env
source .env.backend
source .env.frontend

aws ecr get-login-password | docker login \
    --username AWS \
    --password-stdin $ECR_REGISTRY

docker compose -f ./docker-compose-aws.yml pull
docker compose -f ./docker-compose-aws.yml up
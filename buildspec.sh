source .env
source .env.backend
source .env.db
source .env.frontend

aws ecr get-login-password | docker login --username AWS --password-stdin $ECR_REGISTRY

docker compose up --pull --build
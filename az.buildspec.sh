source .env
source .env.backend
source .env.frontend

docker login musicologypro.azurecr.io \
    --username $AZ_ACR_USERNAME \
    --password $AZ_ACR_PASSWORD

docker compose -f ./docker-compose-az.yml pull
docker compose -f ./docker-compose-az.yml up
source .env
source .env.backend
source .env.frontend

docker login musicologypro.azurecr.io --username $AZ_ACR_USERNAME --password $AZ_ACR_PASSWORD

docker compose pull
docker compose up
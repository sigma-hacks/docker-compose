SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $SCRIPTPATH

# Enveroinment loading
source .env

docker-compose -p "$PROJECT_NAME" down
docker-compose -p "$PROJECT_NAME" up -d

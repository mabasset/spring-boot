export U_NAME=$(id -nu)
export U_ID=$(id -u)
export U_PASS=1234

docker compose up \
    --detach
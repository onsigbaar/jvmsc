# JVMSC

## Build

```
./gradlew build
# ./gradlew build -x test
```

## Docker build

```
docker-compose build
```

## Run

```
docker-compose up -d
```

## Get access token

```
unset ACCESS_TOKEN

ACCESS_TOKEN=$(curl -k https://writer:secret-writer@localhost:8443/oauth2/token -d grant_type=client_credentials -d scope="book:read book:write" -s | jq -r .access_token)

echo $ACCESS_TOKEN
```

## Check log

```
docker-compose logs -f --tail 0 book-outlet
```

## Test

```
./test-jvmsc-app.bash start
```

## Shutdown

```
docker-compose down
```

### Build and push Image on Docker hub automatic control by workwlows
[![main - on push](https://github.com/Abra19/docker-first-deploy/actions/workflows/main.yml/badge.svg)](https://github.com/Abra19/docker-first-deploy/actions/workflows/main.yml)


### Build Image manually
```
docker build -t docker-first-deploy-app:v2 .
```


### Deploy

```
 V=6 make deploy
 ```

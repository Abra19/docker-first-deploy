### Build Image manual control
```
docker build -t abra19/devops-example-app .
```

### Build and push Image on Docker hub automatic control by workwlows
```main.yml  - works on push```
[![main](https://github.com/Abra19/docker-first-deploy/actions/workflows/main.yml/badge.svg)](https://github.com/Abra19/docker-first-deploy/actions/workflows/main.yml)



## Usage

```
docker run -p 3000:3000 -e SERVER_MESSAGE="Hello, Abra19!"  abra19/devops-example-app
 ```

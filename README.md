### Build Image manual control
```
docker build -t abra19/test-devops-example-app .
```

### Build and push Image on Docker hub automatic control by workwlows
```main.yml on push```

## Usage

```
docker run -p 3000:3000 -e SERVER_MESSAGE="Hello, Abra19!"  abra19/devops-example-app
 ```

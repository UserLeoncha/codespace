# two container projecct
```bash
docker pull emqx/emqx-enterprise:5.8.4
docker run -d --name emqx-enterprise -p 1883:1883 -p 8083:8083 -p 8084:8084 -p 8883:8883 -p 18083:18083 emqx/emqx-enterprise:5.8.4
```

```bash
docker run -d --name mysql8 -p 8080:8080 mysql:8
```
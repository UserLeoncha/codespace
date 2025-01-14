# vitepress little-weight website architecture easy build

## Windows
``` bash
docker build -t container C:\Users\Leon_\codespace
docker run -v C:\Users\Leon_\codespace:/home/leoncha/codespace --name codespace -p 5050:5050 -it container
```
## Linux
``` bash
docker build -t website-container ~/codespace
docker run -v ~/codespace:/home/leoncha/codespace --name mywebsite -p 5050:5050 -it website-container
```

# How to run it? for the personal website
``` bash
npm add -D vitepress

npx vitepress init

npm run docs:dev --port 5050
```
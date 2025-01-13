# mywebsite
Leoncha's Website

# this is my development architecture.
## used a script to realise the container auto-control, its little weight and different from the k8s.
Windows
``` bat
.\PM.bat <image-name> <container-name>
```

Linux
```bash
bash PM.sh <image-name> <contianer-name>
```
# I build this docker image to deploy my website
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

# How to run it?
``` bash
npm add -D vitepress

npx vitepress init

npm run docs:dev --port 5050
```
# what's this 
this is a full-function development box,supply many mcu chain like 

# about the esp-idf
the image contains a series tools.
you can check the steps at [esp-idf](https://docs.espressif.com/projects/esp-idf/zh_CN/stable/esp32/get-started/linux-macos-setup.html)

first download the pnpm 

# mywebsite
Leoncha's Website

# I build this docker image to deploy my website
``` bash
docker build -t website-container C:\\codespace
docker run -v C:\\codespace:/home/leoncha/codespace --name mywebsite -p 5050:5050 -it website-container
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

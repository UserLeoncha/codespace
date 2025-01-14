# Leon_cha totle devops area
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

``` bash
npm add -D vitepress

npx vitepress init

npm run docs:dev --port 5050
```
# what's this 
this is a full-function development box,supply many mcu chain like 

# esp-idf development environment
the image contains a series tools.
you can check the steps at [esp-idf](https://docs.espressif.com/projects/esp-idf/zh_CN/stable/esp32/get-started/linux-macos-setup.html)

```bash
git clone -b v5.4 --recursive https://github.com/espressif/esp-idf.git
```
这是一个非常重量级的工程，很明显这个过程并不好处理，esp官方并没有提供易用的docker镜像，
我更倾向于在build完成后通过挂载逻辑卷或者容器内git clone的方式拉取环境，无论怎么做都不容易，现在我们采用第一种方式，很明显在裸机中拉取镜像更快，但是我是用windows系统，这就要考虑字符编码的问题。
同时也要用到.gitignore文件里过滤提交的内容。


first download the pnpm 

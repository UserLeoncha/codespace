# mqtt服务器

## 项目一物联网连接项目
https://www.cnblogs.com/yuchangchang/articles/16244417.html

https://blog.csdn.net/m0_69082048/article/details/135503930

https://blog.csdn.net/GJgjgg/article/details/125686979

https://blog.csdn.net/qq_63267523/article/details/137792304

### EMQX使用指南
https://www.emqx.io/docs/zh/latest/getting-started/getting-started.html

## ESP8266以及wifi协议 

### esp模块的两种工作模式
AT模式与STA模式
AP模式：无线网络接入点，也就是网络的创建者
STA模式：每一个连接到无线网络中的终端，都可以称为STA终端

在常规物联网项目中，通常采用“服务端-边缘端-设备端”的三端架构。

AT指令
### AT指令集

### mqtt协议报头解析

AT

AT+CWMODE_DEF = 3

AT+CWJAP_DEF  "tuan", "12345678"

AT+SAVETRANSUNK=1, "broker-cn.emqx.io", 1883, "TCP"

10（协议） 13（字节长度） 00 04（协议长度） 4D 51 54 54（MQTT） 04（版本3） C2（配置） 00 78（120， 心跳） 00 03（客户端id 长度） 68 6A 74（hjt 客户端id 主题名） 00 00（用户名id 长度） 00 00（密匙长度） 

82（固定报头） 08（后面长度） 00 02（配置） 00 03（订阅主题长度） 68 6A 74（hjt） 00

C0 00
保活报文

10 13 00 04 4D 51 54 04 C2 00 78 00 03 68 6A 74 00 00 00 00
连接

82 08 00 02 00 03 68 6A 74 00
订阅

## mosquitto客户端和mosquitto服务器


title: 【效率提升】ALMRun可以怎么玩
author: wm
abbrlink: 14481
tags:
  - 效率提升
categories:
  - 效率提升
  - 工具
date: 2018-09-06 21:50:00
---
# ALMRun可以怎么玩

## ALMRun缘起

* 从前有一种信仰叫做“唯快不破”，认为一个只靠键盘就能把电脑玩的飞起的码农才是一个有逼格的码农
* 从前有个软件叫ALTRun，用快捷键+快捷入口就能唤起所有可执行程序，从此再也不用劳神找图标
> http://www.appinn.com/altrun/

* 后来ALTRun很久都不更新了，有些满足不了码农的胃口了，这个时候出现了它的进阶版**ALMRun**

## ALMRun简介

* ALMRun是一款快速启动软件，准确的讲是一款全局快捷入口配置软件，它的特点有——**方便**、**可扩展**、**开源**
> 快捷入口：这里说的快捷入口是调出一个输入框，输入特定的字符，软件会过滤出想要的快捷启动条目，然后可以通过回车直接启动相应程序（其实不光是程序）  
> ![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/21642830.jpg)

* 可以从下面资源中获取进一步的信息
  * 源码: <https://github.com/chenall/ALMRun>  
  * 博客: <http://chenall.net/post/alrun-merry/>  
  * 主页: <http://almrun.chenall.net>

## ALMRun玩法

下面的内容仅仅是个人使用的一些经验，想知道具体的操作方法、软件的预设情况、软件的配置方法以及扩展开发的方法，请从上面给出的资源中了解
### ALMRun基础玩法

* ALMRun全局热键为Alt + Run（这与ALTRun）相同
* 右键任务栏图标可以找到“命令管理”，这里可以配置快捷入口（快捷入口->执行命令的对应）

#### 自动生成已安装软件的快捷入口

ALMRun支持添加“自动扫描目录”，指定目录，指定文件后缀名过滤条件，ALMRun会调用lua脚本自动生成一些快捷入口  
![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/58291620.jpg)

#### 打开常用程序

以打开Sublime Text为例，只要把命令设置为可执行文件的路径`E:\Program Files\Sublime Text 3\sublime_text.exe`就可以了  
![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/23878124.jpg)

#### 打开常用文件（夹）

与上面一样，只要把命令设置为文件（夹）路径，比如html的标签和属性的本地文档`E:\01wangmeng\04学习\01编程语言\Html5\HTML5中文手册.pdf`

#### 执行cmd命令

常用的一些cmd命令，可以直接从快捷入口执行命令，这时你可以给快捷入口一个方便记忆与使用的名字  
![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/46486187.jpg)

### ALMRun花式玩法

#### 指定浏览器打开特定页面

这个用法涉及了三个功能点：
* 支持环境变量的引用
* 支持url类命令
* 支持调用快捷入口时添加参数

##### 配置环境变量

这里在Windows的环境变量中给谷歌Chrome浏览器配一个环境变量
C:\Users\wangmeng\AppData\Local\Google\Chrome\Application\chrome.exe   
![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/96556879.jpg)
##### 引用环境变量

快捷入口中的命令直接引用系统的环境变量
%CHROME_PATH% https://developer.mozilla.org/zh-CN/search?q={%p}  
![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/26165247.jpg)

##### 使用快捷入口时添加参数

在目标快捷入口过滤成为第一个或唯一一个时，按下`Tab`键，然后就可以输入参数了，这个使用方法还是挺能发挥想象力的  
![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/11728746.jpg)  

#### 指定目录运行命令

这条看似与基础用法中的某条没什么区别，实际是想表达一个思路：一些需要指定目录执行的命令，也是可以使用快捷入口的。（如果这下面是一个工程构建脚本呢，是一个项目备份脚本呢）  
![](http://7xumuq.com1.z0.glb.clouddn.com/16-5-26/50200006.jpg)  

#### 待发现


## 啰嗦两句
* ALMRun支持ALTRun的导入，具体见ALMRun的README
* 一个工具的使用是一个不断磨合的过程，只有不断调教训练后，她才真正成为你的菜

**注意**：
环境变量配置完后，需要ALMRun重启生效

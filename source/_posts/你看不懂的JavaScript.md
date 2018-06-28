title: 你看不懂的JavaScript
author: wm
tags:
  - JavaScript
categories:
  - 语音学习
date: 2018-06-28 15:02:00
---
# 你看不懂的JavaScript
 
一些别有用心的写法、一些语法糖、一些巧妙的用法
## 语法糖、语法简略
 
 
### 属性函数省略function关键字
```
obj {
  key1: function () {
    //something
  }
}
```
上面代码可以简写为（E6提供）
```
obj {
  key1 () {
    //something
  }
}
```
 
### ` !! `转为Boolean型
```
if (!!string1 === true ) {
}
```
这个做法很常见，简单快捷
针对上面的例子，更简便的写法是(因为逻辑表达式中string1会被隐式转换)，但是出于执行效率原因，应该尽量避免代码中的隐式转换
```
if (string1) {}
```
 
### 使用`+`转为Number类型
```
(+"1.1") + (+"1.1") // 2.2
```
这个方法比Number()简单，比ParseInt/parseFloat()通用
 
### ` || `赋默认值
```
a = a || 1 // a如果没有值，则令a=1；在处理参数获取时很常见
```
 
### ` && `串联步进的条件执行
```
user && user.login(); // user不为逻辑false时，才执行后面的user.login()
```
 
### 使用slice将类Array转为Array
```
Array.prototype.slice.call(arguments); // turn arguments into pure array
```
 
## 别有用心的写法
 
### 将类数组转为数组
```
var elements = document.querySelectorAll("p"); // NodeList
var arrayElements = [].slice.call(elements); // Now the NodeList is an array
var arrayElements = Array.from(elements)
```
 
### 立即执行函数
```
var module = (function ClassName() {
    var _this = {};
    _this.para1 = null;
    _this.para2 = 0;
    return _this;
  })()
```
 
### 构造一个长度为20，元素全为1的Array
```
  Array.apply(null, { length: 20 }).map(function () {
    return 1
  })
```
结果等同于(上面的写法可以当做一个值直接使用，而这个需要有函数包裹)
```
var a = []
a.length = 20
a.fill(1)
```
 
### 建立一个没有__proto__的空对象
```
Object.create(null)
```
 
## 简约却不简单
 
### 将数组排序却不改变原数组
```
namespaces.slice(0).sort()
```
 
### 利用对象展开和Set数组去重
```
let removeDuplicate = function(arr) { return [...new Set(arr)] }
```
 
### 对象解构的语法来获取数组的元素——数组也是特殊的对象
```
const csvFileLine = '1997,John Doe,US,john@doe.com,New York';
const { 2: country, 4: state } = csvFileLine.split(',');
```
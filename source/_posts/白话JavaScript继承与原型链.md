title: 白话JavaScript继承与原型链
author: wm
abbrlink: 4cf193a8
tags:
  - JavaScript
categories:
  - 语言学习
  - JavaScript
date: 2018-11-14 21:43:00
---
盗一张图引入：
![](http://www.shangkongjian.cn/18-11-14/56847459.jpg)

一、原型链的构成
1.1 三个基础概念
首先，对“继承”的一个简单的理解，继承者B拥有被继承者A的变量和方法。如果单纯从效果上来说，可以理解为继承者B是建立了一个被继承者A的拷贝C，然后在这个拷贝C的基础上改一些东西产生的。但是，语言创造者不会真的拷贝一份，没必要，浪费存储。
构造器：

    1. 通过new生成对象实例的函数，首字母一般大写（并不是必须）。
    2. 它是Function类的对象实例，所以它也有它的模板——Function.prototype；所以有一个特殊情况，因为Function也是一个函数对象实例，Function.__proto__ ===             Function.prototype。
__proto__：

    实例所继承的对象（换个说法就是这个实例的模板），比如function xx，xx.__proto__就是Function.prototype。
prototype：

    1. 构造器生成的对象实例继承自哪个对象（换个说法是这个构造器生成一个新对象实例时候使用的模板），它有的，新对象就都有。一般构造器的名字加上.prototype就        代表了这个构造器生成实例时候用的模板。例如：function xx 的模板就是Function.prototype；a = {}的模板就是Object.prototype。
    2. 另外，这个模板本身也是一个类的实例，它也有它的__proto__；一个特殊的情况是Object.prototype.__proto__ === null

说明：
函数对象有 proto 属性，又有 prototype 属性。普通对象只有 proto 属性，没有 prototype 属性。其实javascript中所有的函数都有prototype这个属性，反过来所有具有prototype的对象本身也是一个函数。

经典例子：
Number.__proto__ === Function.prototype   // true   由于Number是个构造器，本质是个函数，所以它的模板就是函数对象（Function）的模板
Function.proto == Function.prototype    // true    

1.2 new干了什么
1、生成了一个匿名对象
2、把构造器模板（.prototype）的属性复制到这个对象
（把1、2说成按照构造器模板生成一个对象也可，暂时没有能力区分）

1.3 原型链
因为__proto__指向了一个模板，JavaScript的原型链就可以通过__proto__这个引用（指针）建立关系，这个对象上找不到的东西，可以到模板上去找，还可以到模板的模板上去找，直到找到null这个什么也没有的对象上。因为这是一条有层级的链路，所以叫原型链。

二、继承关系测试——instanceof 
MDN定义：instanceof运算符用于测试构造函数的prototype属性是否出现在对象的原型链中的任何位置。
这个操作符可以随着原型链的复杂变得难以理解，但一般不会用它做那种复杂的测试。

2.1 JavaScript世界的鸡生蛋、蛋生鸡故事

Object instanceof Function    // true
Function instanceof Object    // true

三、构造器属性——constructor

构造器和构造器的模板不是从属关系，prototype有个constructor属性指向构造器
例如：Function.prototype.constructor === Function


软件分析测试第二次作业提交
=======================

## 简介

本次作业中，采用了LLVM程序分析框架，对一个简单的C语言程序进行了转换。其中，`c2ssa.c`是C语言源文件，`c2ssa.ll`是转换后的部分ssa表达。

## 变量

在函数`void pointer()`中，有六个变量a、b、c、d、pa、pb，其中a和b为address-taken变量，其余四个为top-level变量。

## 部分转换
1. 使用指向a的指针pa对a的值进行修改

在`c2ssa.c`中，语句
```
  *pa = b;
```

在`c2ssa.ll`，对应语句
```
  %7 = load i32, i32* %2, align 4
  %8 = load i32*, i32** %5, align 8
  store i32 %7, i32* %8, align 4
```

2. 使用指向b的指针pb对b进行修改


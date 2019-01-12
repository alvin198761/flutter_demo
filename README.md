# crm_flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## 写了个测试功能，不想继续开发了

## 效果图

![image](https://github.com/alvin198761/flutter_demo/blob/master/flutter.gif?raw=true)

## 更新日志
2019/1/11 用js 制作模拟服务器，模拟请求和相应数据
2019/1/12 完成 网络请求，解决从布局超出界面的问题

## 总结几个问题
1. 变量名最好是小写开头，前缀下划线，大写会没有值
2. dio 的请求，不能用localhost 或者 127.0.0.1
3. 全局状态管理，还是个不成熟的娃娃，如果没有必要，建议不要用
4. 界面布局，我觉得应该改进，或者支持拖拽，不然效率有点低
5. appbar 如果想要没有返回箭头，必须放 MaterialApp 里面
6. json 序列化和反序列化，目前还不是很完善，应该能自动搞定才对


## 模拟数据启动
1. 需要安装nodejs
2. 进入mockserver 
3. 执行 npm install 安装并等待安装完成
4. npm run mock 启动模拟服务器
5. 修改数据需要重写启动才生效，不过重启很快的

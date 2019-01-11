import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_event_bus/views/branch/NewsListView.dart';
import 'package:flutter_event_bus/views/component/banner/BannerWidget.dart';
import 'package:flutter_event_bus/views/component/banner/BannerWithEval.dart';

class Branch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BranchState();
  }
}

class _BranchState extends State<Branch> {
  final List<BannerWithEval> data = [
    new BannerWithEval(
        imgUrl:
            'https://img01.sogoucdn.com/app/a/100520093/60d2f4fe0275d790-007c9f9485c5acfd-bdc6566f9acf5ba2a7e7190734c38920.jpg'),
    new BannerWithEval(
        imgUrl:
            'http://img4.duitang.com/uploads/item/201502/27/20150227083741_w5YjR.jpeg'),
    new BannerWithEval(
        imgUrl:
            'http://img4.duitang.com/uploads/item/201501/06/20150106081248_ae4Rk.jpeg'),
    new BannerWithEval(
        imgUrl: 'http://pic1.win4000.com/wallpaper/a/59322eda4daf0.jpg'),
    new BannerWithEval(
        imgUrl: 'http://uploads.5068.com/allimg/1711/151-1G130093R1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        theme: new ThemeData(primaryColor: Colors.white),
        home: Scaffold(
//      appBar: AppBar(
//        title: Text("首页"),
//      ),
          body: Column(
            children: <Widget>[
              BannerWidget(
                data: data,
                curve: Curves.linear,
                onClick: (position, bannerWithEval) {
                  print(position);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      child: Text("新闻列表"),
                      padding: EdgeInsetsDirectional.only(start: 10),
                    ),
                    IconButton(icon: Icon(Icons.more), onPressed: () {})
                  ],
                ),
              ),
              NewsListView()
            ],
          ),
        ));
  }
}

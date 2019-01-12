import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_event_bus/api/NewsApi.dart';
import 'package:flutter_event_bus/stores/NewsBean.dart';
import 'package:flutter_event_bus/stores/ResultModel.dart';
import 'package:flutter_event_bus/views/component/browser/WebBrowser.dart';

class NewsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _NewsListViewState();
  }
}

class _NewsListViewState extends State<NewsListView> {
  List<NewsBean> newsList = new List();

  @override
  void initState() {
    super.initState();
    NewsApi.queryList().then((response) {
      ResultModel res = ResultModel.fromJson(response.data);
      List<NewsBean> list = new List();
      for (var item in res.data) {
        list.add(NewsBean.fromJson(item));
      }
      setState(() {
        newsList = list;
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Scrollbar(
        child: RefreshIndicator(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              itemCount: newsList.length,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: _newsBuilder,
            ),
            onRefresh: _onRefreshNews),
      ),
    );
  }

  Future<Null> _onRefreshNews() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
    });
  }

  Widget _newsBuilder(BuildContext context, int index) {
    NewsBean news = newsList.elementAt(index);
    return new Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (BuildContext context) {
              return new WebBrowser(
                title: news.title,
                url: news.url,
              );
            }));
          },
          child: Row(children: <Widget>[
            SizedBox(
              width: 100,
              height: 50,
              child: Image.asset(news.icon),
            ),
            Column(
              children: <Widget>[
                Text(news.title),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text("时间"), Text("点击次数")],
                ),
              ],
            )
          ]),
        ));
  }
}

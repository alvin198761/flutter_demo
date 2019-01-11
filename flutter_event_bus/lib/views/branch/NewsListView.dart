import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_event_bus/api/NewsApi.dart';
import 'package:flutter_event_bus/stores/NewsBean.dart';
import 'package:flutter_event_bus/views/component/browser/WebBrowser.dart';

class NewsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _NewsListViewState();
  }
}

class _NewsListViewState extends State<NewsListView> {
  List<NewsItem> newsList = new List();

  @override
  void initState() {
    super.initState();

    NewsApi.queryList().then((response) {
//      response.data["data"]
    }).catchError((err) {
      print("2222");
      print(err);
    });
    for (var i = 0; i < 10; i++) {
      newsList.add(new NewsItem(
          news: new NewsBean(
              id: i,
              title: "测试新闻 $i",
              icon: "assets/rabbit_48px_1182406_easyicon.net.png",
              clickCount: i,
              time: DateTime.now(),
              mark: i % 2,
              url:
                  "https://www.oschina.net/news/103516/numsharp-0-6-5-released")));
    }
  }

//  onTap: ()
  @override
  Widget build(BuildContext context) {
    return Card(
        child: RefreshIndicator(
            child: SizedBox(
                height: 400,
                child: Scrollbar(
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(20.0),
                      itemCount: newsList.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          new Divider(),
                      // 添加分割线
                      itemBuilder: (context, item) {
                        return newsList.elementAt(item);
                      }),
                )),
            onRefresh: _onRefreshNews));
  }

  Future<Null> _onRefreshNews() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
//      setState(() {
//        list = List.generate(20, (i) => '哈喽,我是新刷新的 $i');
//      });
    });
  }
}

class NewsItem extends StatelessWidget {
  final NewsBean news;

  NewsItem({@required this.news});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
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
    );
  }
}

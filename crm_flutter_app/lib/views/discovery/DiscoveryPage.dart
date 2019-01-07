import 'package:crm_flutter_app/apis/AppApis.dart';
import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _DiscoveryPageState();
  }
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  int _count = 0;
  String _text = "--";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Code'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times. $_text'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onButtonClick,
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  onButtonClick(){
    setState(() {
      _count++;
    });
    AppApis.getSysInfo( );
  }
}

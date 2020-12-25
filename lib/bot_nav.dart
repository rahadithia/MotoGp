import 'package:flutter/material.dart';
import './menu.dart' as awal;
import './nav_setting.dart' as settng;

void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

    @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text("MotoGP Information"),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new awal.BottomNavPage(),
          new settng.Setting(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home, color: Colors.black,),
            ),
            new Tab(
              icon: new Icon(Icons.settings, color: Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}
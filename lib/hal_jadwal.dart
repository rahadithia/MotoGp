import 'package:flutter/material.dart';
import './hal_jadwal_belum.dart' as belum;
import './hal_jadwal_sudah.dart' as sudah;

void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new JadwalNav(),
  ));
}

class JadwalNav extends StatefulWidget {
  @override
  _JadwalNavState createState() => new _JadwalNavState();
}

class _JadwalNavState extends State<JadwalNav> with SingleTickerProviderStateMixin {

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
        title: new Text("MotoGP Events Schedule"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(text: "Upcoming Events"),
            new Tab(text: "Recently Ended"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new belum.Jadwalbelum(),
          new sudah.Jadwalsudah(),
        ],
      ),
    );
  }
}
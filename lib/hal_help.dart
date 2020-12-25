import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text(
          "Bantuan",
        ),
      ),
      body: new ListView(

        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Laporkan Masalah ?",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),
                new Text(" "),
                new Text(
                  "Bila terjadi crash atau stuck pada aplikasi ini tanpa terduga, pengguna dapat menghubungi email Developer yang tertera dalam halaman about (Tentang kami ?).",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
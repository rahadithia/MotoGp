import 'package:flutter/material.dart';
import 'hal_score_data.dart';

class Infoscore extends StatefulWidget {
  Infoscore() : super();

  final String title = "World Standing MotoGP 2019";

  @override
  _InfoscoreState createState() => _InfoscoreState();
}

class _InfoscoreState extends State<Infoscore> {

  List<User> users;
  @override
  void initState(){
    users = User.getUser();
    super.initState();
  }

  DataTable dataBody(){
    return DataTable(
      columns: [
        DataColumn(
          label: new Text("No."),
          numeric: false,
          tooltip: "Rank"
        ),
        DataColumn(
          label: new Text("Rider"),
          numeric: false,
          tooltip: "Rider"
        ),
        DataColumn(
          label: new Text("Negara"),
          numeric: false,
          tooltip: "Flag"
        ),
        DataColumn(
          label: new Text("Score"),
          numeric: false,
          tooltip: "Poin"
        ),
      ],
      rows: users.map((user) => DataRow(
        cells: [
          DataCell(
            new Text(user.no),
          ),
          DataCell(
            new Text(user.namarider),
          ),
          DataCell(
            new Text(user.flag),
          ),
          DataCell(
            new Text(user.poin),
          ),
        ],
      ),

      ).toList(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text(widget.title),
      ),
      body: new ListView(
        children: <Widget>[
          Center(
              child: dataBody(),
            )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Circuit MotoGP",
    home: new Jadwalbelum(),
  ));
}

class Jadwalbelum extends StatefulWidget {
  @override
  _JadwalbelumState createState() => _JadwalbelumState();
}

class _JadwalbelumState extends State<Jadwalbelum> {

  //List Circuit
  List<Container> daftarcircuit = new List();
  var circuitmgp = [
    {
      "judulll": "Season 2019 is Finish !",
      "pictt": "end.jpg",    
      "nomorr": "Event has been ended !",            
      "infodetaill": "Welcome MotoGP 2020 !"},
  ];

  //memanggil List Rider
  _buatlistcircuit()async {
    for (var i = 0; i < circuitmgp.length; i++) {
      final circuitnya = circuitmgp[i];
      final String pictt = circuitnya["pictt"];

      daftarcircuit.add(
        new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
            
            child: new Column(//row
              children: <Widget>[

                //membuat animasi hero
                new Hero(
                  tag: circuitnya['judulll'],
                  //untuk gambar beranimasi kecil kebesar dan menuju halaman baru (untuk transit kehalaman berikut)
                  child: new Material(
                    //untuk memperbesar / memperkecil animasinya
                    child: new InkWell(
                      onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context)=> 
                        new DetailCircuit(judulll: circuitnya['judulll'], pictt: pictt, nomorr: circuitnya['nomorr'], infodetaill: circuitnya['infodetaill'],)
                      )),
                      child: new Image.asset("img/$pictt", fit: BoxFit.cover,),
                    ),
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Column(
                  children: <Widget>[
                    new Text(circuitnya['judulll'],
                    //textAlign: TextAlign.start,
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Serif",
                      color: Colors.redAccent,
                    ),),
                    new Text(circuitnya['nomorr'],
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Serif",
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    _buatlistcircuit();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.count(
        crossAxisCount: 1,
        children: daftarcircuit,
      ),
      
    );
  }
}

class DetailCircuit extends StatelessWidget {
  DetailCircuit({this.judulll, this.pictt, this.nomorr, this.infodetaill});
  final String judulll;
  final String pictt;
  final String nomorr;
  final String infodetaill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            child: new Hero(
              tag: judulll,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("img/$pictt", fit: BoxFit.cover),
                ),
              ),
            ),
          ),

          new NamaCircuit(
            judulll: judulll, 
            nomorr: nomorr,
          ),
          new InfoCircuit(
            infodetaill: infodetaill,
          ),
        ],
      ),
    );
  }
}

//untuk isi nama circuit dan negara
class NamaCircuit extends StatelessWidget {
  NamaCircuit({this.judulll, this.nomorr, this.infodetaill});
  final String judulll;
  final String nomorr;
  final String infodetaill;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(18.0),
      child: new Row(
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                judulll,
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                  fontFamily: "Serif"
                ),
              ),
              new Text(
                nomorr,
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontFamily: "Serif"
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//isi info Circuit
class InfoCircuit extends StatelessWidget {
  InfoCircuit({this.infodetaill});
  final String infodetaill;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                infodetaill,
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontFamily: "Serif"
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
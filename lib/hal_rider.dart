import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Riders MotoGP",
    home: new Rider(),
  ));
}

class Rider extends StatefulWidget {
  @override
  _RiderState createState() => _RiderState();
}

class _RiderState extends State<Rider> {

  //List Circuit
  List<Container> daftarrider = new List();
  var ridermgp = [
    {
      "judull": "Marc Marquez",      
      "pict": "93 Marquez.png",     
      "nomor": "93",  
      "motor": "Honda",
      "infodetail": "Cervera, Spanyol",
      "bb": "65 Kg",
      "tb": "169 cm",
      "lahir": "1993-02-17"
    },
    {
      "judull": "Andrea Dovisioso",  
      "pict": "04 Dovi.png",        
      "nomor": "04",  
      "motor": "Ducati",
      "infodetail": "Forlimpopoli, Italia",
      "bb": "60 Kg",
      "tb": "165 cm",
      "lahir": "1986-03-23"
    },
    {
      "judull": "Mavrick Vinales",   
      "pict": "12 Vinales.png",     
      "nomor": "12",  
      "motor": "Yamaha",
      "infodetail": "Figueres, Spanyol",
      "bb": "65 Kg",
      "tb": "171 cm",
      "lahir": "1995-01-12"
    },
    {
      "judull": "Valentino Rossi",   
      "pict": "46 Rossi.png",       
      "nomor": "46",  
      "motor": "Yamaha",
      "infodetail": "Urbino, Italia",
      "bb": "62 Kg",
      "tb": "181 cm",
      "lahir": "1979-02-16"
    },
    {
      "judull": "Jorge Lorenzo",     
      "pict": "99 Lorenzo.png",     
      "nomor": "99",  
      "motor": "Honda",
      "infodetail": "Palma, Spanyol",
      "bb": "63 Kg",
      "tb": "171 cm",
      "lahir": "1987-05-04"
    },
    {
      "judull": "Alex Rins",         
      "pict": "42 Rins.png",        
      "nomor": "42",  
      "motor": "Suzuki",
      "infodetail": "Barcelona, Spanyol",
      "bb": "65 Kg",
      "tb": "185 cm",
      "lahir": "1995-12-08"
    },
    {
      "judull": "Fabio Quartararo",  
      "pict": "20 Quartararo.png",  
      "nomor": "20",  
      "motor": "Yamaha",
      "infodetail": "Nice, Perancis",
      "bb": "67 Kg",
      "tb": "174 cm",
      "lahir": "1999-04-20"
    },
    {
      "judull": "Jack Miller",       
      "pict": "43 Miller.png",      
      "nomor": "43",  
      "motor": "Ducati",
      "infodetail": "Townsville, Australia",
      "bb": "68 Kg",
      "tb": "175 cm",
      "lahir": "1995-01-18"
    },
    {
      "judull": "Andrea Ianone",     
      "pict": "29 Iannone.png",     
      "nomor": "29",  
      "motor": "Aprilia Racing Team Gresini",
      "infodetail": "Forlimpopoli, Italia",
      "bb": "60 Kg",
      "tb": "165 cm",
      "lahir": "1986-03-23"
    },
    {
      "judull": "Danilo Petrucci",   
      "pict": "9 Petrucci.png",     
      "nomor": "9",  
      "motor": "Ducati", 
      "infodetail": "Terni, Italia",
      "bb": "60 Kg",
      "tb": "180 cm",
      "lahir": "1990-10-24"
    },
    {
      "judull": "Johann Zarco",       
      "pict": "5 Zarco.png",        
      "nomor": "5",  
      "motor": "KTM", 
      "infodetail": "Cannes, Perancis",
      "bb": "64 Kg",
      "tb": "171 cm",
      "lahir": "1990-07-16"
    },
    {
      "judull": "Karel Abraham",     
      "pict": "17 Abraham.png",     
      "nomor": "17",  
      "motor": "Ducati",
      "infodetail": "Brno, Ceko",
      "bb": "60 Kg",
      "tb": "180 cm",
      "lahir": "1990-01-02"
    },
    {
      "judull": "Franco Morbidelli",  
      "pict": "21 Morbidelli.png",  
      "nomor": "21",  
      "motor": "Yamaha",
      "infodetail": "Roma, Italia",
      "bb": "63 Kg",
      "tb": "171 cm",
      "lahir": "1994-12-04"
    },
    {
      "judull": "Takki Nakagami",    
      "pict": "30 Nakagami.png",    
      "nomor": "30",  
      "motor": "Honda",
      "infodetail": "Prefektur Chiba, Jepang",
      "bb": "66 Kg",
      "tb": "169 cm",
      "lahir": "1992-02-09"
    },
    {
      "judull": "Carl Crutchlow",    
      "pict": "35 Crutchlow.png",   
      "nomor": "35",  
      "motor": "Honda",
      "infodetail": "Coventry, Britania Raya",
      "bb": "63 Kg",
      "tb": "171 cm",
      "lahir": "1985-10-29"
    },
    {
      "judull": "Joan Mir",          
      "pict": "36 Mir.png",         
      "nomor": "36",  
      "motor": "Suzuki",
      "infodetail": "Palma, Spanyol",
      "bb": "63 Kg",
      "tb": "175 cm",
      "lahir": "1997-09-01"
    },
    {
      "judull": "Pol Espargaro",     
      "pict": "41 Espargaro.png",   
      "nomor": "44",  
      "motor": "KTM",
      "infodetail": "Granollers, Spanyol",
      "bb": "70 Kg",
      "tb": "171 cm",
      "lahir": "1991-06-10"
    },
    {
      "judull": "Aleix Espargaro",    
      "pict": "44 Espargaro.png",   
      "nomor": "41",  
      "motor": "Aprilia Racing Team Gresini",
      "infodetail": "Granollers, Spanyol",
      "bb": "60 Kg",
      "tb": "180 cm",
      "lahir": "1989-07-30"
    },
    {
      "judull": "Tito Rabat",        
      "pict": "53 Rabat.png",       
      "nomor": "53",  
      "motor": "Ducati",
      "infodetail": "Barcelona, Spanyol",
      "bb": "66 Kg",
      "tb": "171 cm",
      "lahir": "1989-05-25"
    },
    {
      "judull": "Hafiz Syahrin",     
      "pict": "55 Syahrin.png",     
      "nomor": "55",  
      "motor": "KTM",
      "infodetail": "Selangor, Malaysia",
      "bb": "70 Kg",
      "tb": "180 cm",
      "lahir": "1994-05-05"
    },
    {
      "judull": "Francesco Bagnaia",           
      "pict": "63 Bagnaia.png",     
      "nomor": "63", 
      "motor": "Ducati", 
      "infodetail": "Torino, Italia",
      "bb": "69 Kg",
      "tb": "181 cm",
      "lahir": "1997-01-14"
    },
    {
      "judull": "Oliveira",          
      "pict": "88 Oliveira.png",    
      "nomor": "88",  
      "motor": "KTM",
      "infodetail": "Almada, Portugal",
      "bb": "67 Kg",
      "tb": "179 cm",
      "lahir": "1995-01-04"
    },
  ];

  //memanggil List Rider
  _buatlistrider()async {
    for (var i = 0; i < ridermgp.length; i++) {
      final ridernya = ridermgp[i];
      final String pict = ridernya["pict"];

      daftarrider.add(
        new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
            
            child: new Row(//row
              children: <Widget>[

                //membuat animasi hero
                new Hero(
                  tag: ridernya['judull'],
                  //untuk gambar beranimasi kecil kebesar dan menuju halaman baru (untuk transit kehalaman berikut)
                  child: new Material(
                    //untuk memperbesar / memperkecil animasinya
                    child: new InkWell(
                      onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context)=> 
                        new DetailCircuit(
                          judull: ridernya['judull'], 
                          pict: pict, 
                          nomor: ridernya['nomor'], 
                          infodetail: ridernya['infodetail'], 
                          motor: ridernya['motor'],
                          bb: ridernya['bb'],
                          tb: ridernya['tb'],
                          lahir: ridernya['lahir'])
                      )),
                      child: new Image.asset("img/$pict", fit: BoxFit.cover, width: 100.0, height: 100.0,),
                    ),
                  ),
                ),
                
                //new Row(
                //  children: <Widget>[
                //    new Text(ridernya['judull'])
                //  ],
                //)
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(ridernya['judull'],
                    //textAlign: TextAlign.start,
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Serif",
                      color: Colors.redAccent,
                    ),),
                    new Text(ridernya['nomor'],
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Serif",
                      color: Colors.grey,
                    ),),
                  ],
                ),
                //new Text(ridernya['judull'],
                //style: new TextStyle(
                //  fontSize: 18,
                //  fontFamily: "Serif"
                //)),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    _buatlistrider();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text(
          "Riders MotoGP",
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Image.asset("img/rlogo.png"),
            new Expanded(
              child: new ListView(
                children: daftarrider,
              ),

              //kalo pake raisedutton
              //child: new RaisedButton(
              //  child: new ListView(
              //    children: daftarcircuit,
              //  ),
              //  onPressed: (){},
              //),
            ),
          ],
        ),
      ),
      
    );
  }
}

class DetailCircuit extends StatelessWidget {
  DetailCircuit({this.judull, this.pict, this.nomor, this.infodetail, this.motor, this.lahir, this.bb, this.tb});
  final String judull;
  final String pict;
  final String nomor;
  final String infodetail;
  final String motor;
  final String lahir;
  final String bb;
  final String tb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            child: new Hero(
              tag: judull,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("img/$pict", fit: BoxFit.cover),
                ),
              ),
            ),
          ),

          new NamaCircuit(judull: judull, nomor: nomor,),
          new InfoCircuit(
            infodetail: infodetail,
            judull: judull,
            nomor: nomor,
            motor: motor,
            tb: tb,
            bb: bb,
            lahir: lahir,
          ),
        ],
      ),
    );
  }
}

//untuk isi nama circuit dan negara
class NamaCircuit extends StatelessWidget {
  NamaCircuit({this.judull, this.nomor, this.infodetail});
  final String judull;
  final String nomor;
  final String infodetail;

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
                judull,
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                  fontFamily: "Serif"
                ),
              ),
              new Text(
                "Nomor : $nomor",
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
  InfoCircuit({this.infodetail, this.motor, this.lahir, this.bb, this.tb, this.nomor, this.judull});
  final String infodetail;
  final String motor;
  final String lahir;
  final String bb;
  final String tb;
  final String judull;
  final String nomor;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(8.0),
          //child: new Text(
          //  infodetaill
          //),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "Nama Rider : $judull",
                style: new TextStyle(
                  fontFamily: "Serif",
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
              new Text(" "),
              new Text(
                "Nomor Rider : $nomor",
                style: new TextStyle(
                  fontFamily: "Serif",
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
              new Text(" "),
              new Text(
                "Motor : $motor",
                style: new TextStyle(
                  fontFamily: "Serif",
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
              new Text(" "),
              new Text(
                "Tempat Lahir : $infodetail",
                style: new TextStyle(
                  fontFamily: "Serif",
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
              new Text(" "),
              new Text(
                "Tanggal Lahir : $lahir",
                style: new TextStyle(
                  fontFamily: "Serif",
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
              new Text(" "),
              new Text(
                "Tinggi Badan : $tb",
                style: new TextStyle(
                  fontFamily: "Serif",
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
              new Text(" "),
              new Text(
                "Berat Badan : $bb",
                style: new TextStyle(
                  fontFamily: "Serif",
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
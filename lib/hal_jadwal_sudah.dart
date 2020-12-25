import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Circuit MotoGP",
    home: new Jadwalsudah(),
  ));
}

class Jadwalsudah extends StatefulWidget {
  @override
  _JadwalsudahState createState() => _JadwalsudahState();
}

class _JadwalsudahState extends State<Jadwalsudah> {

  //List Circuit
  List<Container> daftarcircuit = new List();
  var circuitmgp = [
{
      "judulll": "Losail",
      "pictt": "0001.png",
      "nomorr": "Qatar",
      "tanggal": "2019 - 03 - 10",
      "infodetaill": "Balapan akan dimulai pada pukul 23:00 WIB."
    },
    {
      "judulll": "Termas de Rio Hondo",              
      "pictt": "0002.png", 
      "nomorr": "Argentina",       
      "tanggal": "2019 - 03 - 31", 
      "infodetaill": "Balapan akan dimulai pada pukul 01:00 WIB."
    },
    {
      "judulll": "Circuit of The Americas",          
      "pictt": "0003.png",                  
      "nomorr": "Amerika Serikat",  
      "tanggal": "2019 - 04 - 14",
      "infodetaill": "Balapan akan dimulai pada pukul 02:00 WIB."
    },
    {
      "judulll": "Jerez",                            
      "pictt": "0004.png",                   
      "nomorr": "Spanyol", 
      "tanggal": "2019 - 05 - 05",         
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "Le Mans",                          
      "pictt": "0005.png",               
      "nomorr": "Prancis",  
      "tanggal": "2019 - 05 - 19",        
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "Mugello",                          
      "pictt": "0006.png",                
      "nomorr": "Italia",   
      "tanggal": "2019 - 06 - 02",        
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "Circuit de Barcelona ",            
      "pictt": "0007.png",           
      "nomorr": "Barcelona, Spanyol",   
      "tanggal": "2019 - 06 - 16",     
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "TT Assen",                         
      "pictt": "0008.png",                 
      "nomorr": "Belanda",      
      "tanggal": "2019 - 06 - 30",      
      "infodetaill": "Balapan akan dimulai pada pukul 18:00 WIB."
    },
    {
      "judulll": "Sachsenring",                      
      "pictt": "0009.png",            
      "nomorr": "Jerman",           
      "tanggal": "2019 - 07 - 07",
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "Brno",                             
      "pictt": "0010.png",           
      "nomorr": "Republik Ceko",    
      "tanggal": "2019 - 08 - 04",
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "Red Bull Ring",                    
      "pictt": "0011.png",        
      "nomorr": "Austria",  
      "tanggal": "2019 - 08 - 11",        
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "Silverstone",                      
      "pictt": "0012.png",     
      "nomorr": "Inggris Raya",     
      "tanggal": "2019 - 08 - 25",
      "infodetaill": "Balapan akan dimulai pada pukul 21:00 WIB."
    },
    {
      "judulll": "Misano",                           
      "pictt": "0013.png",            
      "nomorr": "San Marino",   
      "tanggal": "2019 - 09 - 15",    
      "infodetaill": "Balapan akan dimulai pada pukul 1:00 WIB."
    },
    {
      "judulll": "MotorLand Aragon",                 
      "pictt": "0014.png",                
      "nomorr": "Aragon, Spanyol",    
      "tanggal": "2019 - 09 - 22",       
      "infodetaill": "Balapan akan dimulai pada pukul 19:00 WIB."
    },
    {
      "judulll": "Chang International Circuit",                          
      "pictt": "0015.png",             
      "nomorr": "Thailand",     
      "tanggal": "2019 - 10 - 06",     
      "infodetaill": "Balapan akan dimulai pada pukul 14:00 WIB."
    },
    {
      "judulll": "Twin Ring Motegi, Motegi",                           
      "pictt": "0016.png",                
      "nomorr": "Jepang",         
      "tanggal": "2019 - 10 - 20",  
      "infodetaill": "Balapan akan dimulai pada pukul 12:00 WIB."
    },
    {
      "judulll": "Phillip Island",                   
      "pictt": "0017.png",     
      "nomorr": "Australia",  
      "tanggal": "2019 - 10 - 27",       
      "infodetaill": "Balapan akan dimulai pada pukul 10:00 WIB."
    },
    {
      "judulll": "Sepang International Circuit",                           
      "pictt": "0018.png",              
      "nomorr": "Malaysia",   
      "tanggal": "2019 - 11 - 03",      
      "infodetaill": "Balapan akan dimulai pada pukul 13:00 WIB."
    },
    {
      "judulll": "Ricardo Tormo",                    
      "pictt": "0019.png",                     
      "nomorr": "Valencia",       
      "tanggal": "2019 - 11 - 17",  
      "infodetaill": "Balapan akan dimulai pada pukul 20:00 WIB."
    },
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
                        new DetailCircuit(judulll: circuitnya['judulll'], pictt: pictt, nomorr: circuitnya['nomorr'], infodetaill: circuitnya['infodetaill'], tanggal: circuitnya['tanggal'])
                      )),
                      child: new Image.asset("img/$pictt", fit: BoxFit.cover,),
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
    _buatlistcircuit();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.count(
        crossAxisCount: 1,
        children: daftarcircuit,
        
        //SliverFillRemaining(
        //    child: new GridView.count(
        //      crossAxisCount: 1,
        //      children: daftarcircuit,
        //    ),
        //  ),

        //child: new Column(
        //  children: <Widget>[
        //    new Image.asset("img/clogo.png"),
        //    new Expanded(
        //      child: new GridView.count(
        //        crossAxisCount: 1,
        //        children: daftarcircuit,
        //      ),

              //kalo pake raisedutton
              //child: new RaisedButton(
              //  child: new ListView(
              //    children: daftarcircuit,
              //  ),
              //  onPressed: (){},
              //),
        //    ),
        //  ],
        //),
      ),
      
    );
  }
}

class DetailCircuit extends StatelessWidget {
  DetailCircuit({this.judulll, this.pictt, this.nomorr, this.infodetaill, this.tanggal});
  final String judulll;
  final String pictt;
  final String nomorr;
  final String infodetaill;
  final String tanggal;

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

          new NamaCircuit(judulll: judulll, nomorr: nomorr,),
          new InfoCircuit(infodetaill: infodetaill, tanggal: tanggal,),
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
                "Negara : $nomorr",
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
  InfoCircuit({this.infodetaill, this.tanggal});
  final String infodetaill;
  final String tanggal;
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
                "Date : $tanggal",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Serif"
                ),
                textAlign: TextAlign.justify,
              ),
              new Text(" "),
              new Text(
                "Race : $infodetaill",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Serif"
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
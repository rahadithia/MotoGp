import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Circuit MotoGP",
    home: new Circuit(),
  ));
}

class Circuit extends StatefulWidget {
  @override
  _CircuitState createState() => _CircuitState();
}

class _CircuitState extends State<Circuit> {

  //List Circuit
  List<Container> daftarcircuit = new List();
  var circuitmgp = [
    {
      "judulll": "Losail",
      "pictt": "1 Losail Qatar.png",
      "nomorr": "Qatar",
      "infodetaill": "Losail International Circuit merupakan sebuah sirkuit balap di Qatar yang terletak di dekat Doha. Dibangun kurang lebih satu tahun dan menelan biaya 58.000.000 Dollar. Sirkuit ini digelar pertama kali untuk MotoGP pada tahun 2004. Layout sirkuit ini terbentang kira-kira seluas 5,4 km dikelilingi oleh rumput buatan yang dirancang untuk mencegah pasir dari gurun tetangga bertiup ke sirkuit. Trek lurus utama panjangnya lebih dari 1 km. Pada tahun 2008 Qatar merayakan Grand Prix malam hari untuk pertama kalinya dalam sejarah menyusul pembangunan pencahayaan luar ruangan perman."
    },
    {
      "judulll": "Termas de Rio Hondo",              
      "pictt": "2 Termas de Rio Hondo Argentina.png", 
      "nomorr": "Argentina",        
      "infodetaill": "Sirkuit Autódromo Termas de Río Hondo terletak di Termas de Río Hondo, Argentina. Sejatinya sirkuit ini siap dipakai untuk gelaran MotoGP pada musim 2013[1] tetapi pemerintah Spanyol mengatakan tidak aman bagi kru Repsol untuk balapan di Argentina karena masalah keamanan. Sehingga pihak Dorna membatalkan gelaran Gran Premio de la Republica Argentina 2013[2] Argentina dipastikan akan menggelar ajang MotoGP mulai musim 2014 (terakhir kali pada musim 1999) setelah ada penandatanganan kontrak antara Direktur Event Dorna, Javier Alonso; Menteri Pariwisata Argentina, Enrique Meyer; dan Gubernur Santiago del Estero Gerardo Zamora pada 4 Juli 2013"
    },
    {
      "judulll": "Circuit of The Americas",          
      "pictt": "3 Cota America.png",                  
      "nomorr": "Amerika Serikat",  
      "infodetaill": "Circuit of the Americas (sebelumnya bernama Sirkuit Internasional Austin) merupakan sebuah sirkuit balap mobil Formula 1 dengan panjang 5,5 km (3,4 mil) yang terletak di negara bagian Texas, Amerika Serikat, tepatnya di daerah Austin, Texas. Sirkuit ini dirancang oleh Hermann Tilke, dan pertama kali diajukan proposalnya pada pertengahan tahun 2010.[1] Menurut rencana, sirkuit ini akan dimulai pembangunannya pada awal tahun 2011 dengan layout arah anti-clockwise (berlawanan arah jarum jam). Balapan Formula 1 di Austin sendiri yang bertajuk Grand Prix Amerika Serikat digelar pada Oktober 2012.[2] Selain F1, sirkuit ini juga menggelar balapan Grand Prix Sepeda Motor.[3]"
    },
    {
      "judulll": "Jerez",                            
      "pictt": "4 Jerez Spain.png",                   
      "nomorr": "Spanyol",          
      "infodetaill": "Sirkuit Jerez merupakan sebuah sirkuit otomotif yang terletak di Jerez de la Frontera, Spanyol. Sirkuit ini memiliki panjang 4,428km, dan saat ini menjadi salah satu bagian dari kalender MotoGP.[1] Sirkuit ini juga pernah menggelar balapan F1, dan yang paling terkenal adalah saat kasus kontroversi Michael Schumacher di GP Eropa 1997 yang menabrakan mobilnya pada Jacques Villeneuve.[2] Sirkuit ini sendiri saat ini juga dipakai sebagai tempat tes resmi ketika musim F1 sedang libur. Pada 3 Mei 2018, sirkuit dinamai untuk menghormati mantan pengendara sepeda motor Ángel Nieto, yang meninggal pada 2017"
    },
    {
      "judulll": "Le Mans",                          
      "pictt": "5 Le Mans Prancis.png",               
      "nomorr": "Prancis",          
      "infodetaill": "Circuit de la Sarthe[1] atau dikenal juga dengan nama Sirkuit Le Mans[2], merupakan sebuah sirkuit yang terletak di yang terletak di dekat Le Mans, Prancis. Sirkuit ini terkenal sebagai salah satu sirkuit terpanjang di dunia dengan total panjang 13,629 km. Sirkuit ini merupakan salah satu sirkuit legendaris karena setiap tahunnya selalu diadakan balap ketahanan 24 Hours of Le Mans. Selain dipakai balapan Le Mans, bagian sirkuit yang mini, atau dikenal dengan nama Sirkuit Bugatti sering dipakai sebagai tempat penyelenggaraan balapan MotoGP dan sempat pula menjadi tuan rumah balap F1 Grand Prix Prancis."
    },
    {
      "judulll": "Mugello",                          
      "pictt": "6 Mugello Italia.png",                
      "nomorr": "Italia",           
      "infodetaill": "Sirkuit Mugello merupakan sebuah sirkuit balap di Italia yang terletak di dekat Firenze. Sirkuit ini dibangun pada tahun 1974 dan digunakan untuk kejuaraan Superbike, A1GP dan MotoGP. Mugello merupakan sirkuit modern yang dilengkapi dengan fasilitas yang menakjubkan. Perpaduan antara tikungan cepat dan lambat, dengan long strainght yang panjang membuat Mugello menjadi sirkuit yang menantang bagi para pembalap dan insinyur. Berjejeran pepohonan dan pemandangan alam yang indah ditambah riuh penonton yang memenuhi sirkuit, menyuguhkan balapan MotoGP yang spektakuler setiap tahunnya."
    },
    {
      "judulll": "Circuit de Barcelona ",            
      "pictt": "7 Catalunya Catalunya.png",           
      "nomorr": "Barcelona, Spanyol",        
      "infodetaill": "Circuit de Barcelona-Catalunya merupakan salah satu sirkuit yang terletak di pinggiran kota Barcelona, Spanyol.[1] Tepatnya di Montmelo. Sirkuit ini dipakai untuk balapan Formula Satu, GP2, MotoGP, dan Spanish GT. Jumlah tikungan di sirkuit ini ada 13. Di MotoGP tahun 2006 Marco Melandri, Sete Gibernau, Loris Capirossi, Randy de Puniet, dan Daniel Pedrosa mengalami kecelakaan di tikungan pertama. Di Moto2 musim 2016, Luis Salom tewas di sirkuit ini saat latihan bebas. Memiliki panjang 4,627 km"
    },
    {
      "judulll": "TT Assen",                         
      "pictt": "8 Assen Belanda.png",                 
      "nomorr": "Belanda",          
      "infodetaill": "TT Circuit Assen merupakan sebuah sirkuit balap di Belanda yang terletak di dekat Assen. Sirkuit ini dibangun pada tahun 1955 dan digunakan untuk kejuaraan Superbike dan MotoGP. Sirkuit ini dibangun untuk tujuan TT Belanda tahun 1954, dengan peristiwa sebelumnya telah diadakan di jalan umum. Trek sempit, dengan perubahan yang cepat dalam arah, dan sepenuhnya dikelilingi oleh bank rumput dan podium, memberikan tampilan yang sangat baik bagi ratusan ribu penonton fanatik yang tertarik ke acara paling bergengsi di Belanda setiap tahun. Panjang sirkuit ini adalah 4,545 km."
    },
    {
      "judulll": "Sachsenring",                      
      "pictt": "9 Sachsenring Jerman.png",            
      "nomorr": "Jerman",           
      "infodetaill": "Sirkuit Sachsenring adalah sirkuit balap yang terletak di Hohenstein-Ernstthal, dekat Chemnitz di Saxony, Jerman. Sirkuit ini diguakan untuk kejuaraan MotoGP seri Jerman."
    },
    {
      "judulll": "Brno",                             
      "pictt": "10 Brno Republik Ceko.png",           
      "nomorr": "Republik Ceko",    
      "infodetaill": "Automotodrom Brno merupakan sebuah sirkuit balap di Republik Ceko yang terletak di dekat Brno. Sirkuit ini dibangun pada tahun 1987 dan digunakan untuk kejuaraan Superbike, A1GP dan MotoGP. Sirkuit Automotodrom Brno cukup populer dikalangan pembalap dunia sejak 1930 sampai 1982 dengan trek yang melewati desa-desa dan kota bagian barat Brno. Sirkuit Brno di bangun menyerupai mangkuk dengan pemandangan yang sangat baik denga dikelilingi bukit dan hutan dengan trek dan sudut yang cepat dan bergelombang, sehingga bagi para penggemar dan pengendara sirkuit Automotodrom Brno menjadikannya salah satu sirkuit terbaik di ajang balap motor grand prix."
    },
    {
      "judulll": "Red Bull Ring",                    
      "pictt": "11 Red Bull Ring Austria.png",        
      "nomorr": "Austria",          
      "infodetaill": "Österreichring merupakan sirkuit balapan mobil Formula 1 yang digunakan untuk tempat penyelenggaraan Grand Prix Austria dari tahun 1970 sampai 1987. Selang beberapa tahun kemudian, sirkuit ini direnovasi dan kemudian dipendekan sehingga namanya menjadi A1-Ring yang kemudian menggelar balapan F1 dari tahun 1997 sampai 2003. Sirkuit ini terletak di Spielberg, Styria, Austria, dan memiliki panjang asli 5,9 km dalam layout Österreichring. Sedangkan dalam layout A1-Ring sirkuit ini memiliki panjang 4,326 km. Sejak 2011 sirkuit ini berganti nama lagi menjadi Red Bull Ring dengan kepemilikan sirkuit yang diambil alih oleh perusahaan minuman Red Bull"
    },
    {
      "judulll": "Silverstone",                      
      "pictt": "12 Silverstone Inggris Raya.png",     
      "nomorr": "Inggris Raya",     
      "infodetaill": "Sirkuit Silverstone merupakan sirkuit balap F1 yang terletak di Silverstone, Inggris. Di Formula Satu, Michael Schumacher mengalami kecelakaan di sirkuit ini pada Juli 1999 mengalami patah kaki. Jumlah tikungan ada 17. Dibuka tahun 1948 dengan kondisi awal saat itu sebagai bekas lapangan terbang militer kerajaan Britania Raya. Sejak saat itu berbagai macam renovasi mulai dilakukan agar sirkuit tidak terlalu terlihat seperti lapangan terbang, dan renovasi terakhir dilakukan di musim 2010 seiring berbagai macam balapan yang singgah di sirkuit ini selain F1 seperti: MotoGP, dan Superleague Formula."
    },
    {
      "judulll": "Misano",                           
      "pictt": "13 Misano San Marino.png",            
      "nomorr": "San Marino",       
      "infodetaill": "Misano World Circuit Marco Simoncelli (sebelumnya dikenal dengan nama Misano World Circuit dan sebelum 2006 dikenal dengan nama Circuito Internazionale Santa Monica), juga dikenal sebagai Sirkuit Marco Simoncelli atau hanya Marco Simoncelli merupakan sebuah sirkuit balap di Italia yang terletak di dekat kota Misano Adriatico. Sirkuit ini memiliki panjang 4.064 km (2.525 mil), dan biasa dipakai sebagai tempat penyelenggaraan balapan MotoGP dan World Superbike. Untuk kalender roda empat sendiri, sirkuit ini biasa dipakai sebagai tempat balapan Formula Renault dan FIA Sportscars. Pada tahun 2005, jalur akses baru ke sirkuit dibangun, Via Daijiro Kato, untuk menghormati almarhum pembalap Jepang, tewas selama Grand Prix Jepang 2003, yang di musim balapan rumah berada di frazione Portoverde dari Misano Adriatico. Tanggal 5 September 2010, pembalap Jepang Shoya Tomizawa tewas di sirkuit ini setelah terlibat kecelakaan fatal dengan Scott Redding dan Alex de Angelis. Pada 4 November 2011, sirkuit ini ganti nama menjadi sirkuit Marco Simoncelli, yang tewas akibat kecelakaan di Sepang pada tahun 2011."
    },
    {
      "judulll": "MotorLand Aragon",                 
      "pictt": "14 Aragon Aragon.png",                
      "nomorr": "Aragon, Spanyol",           
      "infodetaill": "Ciudad del Motor de Aragón atau dikenal dengan Motorland Aragón merupakan sebuah sirkuit balap Spanyol yang terletak di dekat kota Alcañiz. Trek ini dibangun pada musim 2009, dan dirancang oleh arsitek terkenal dari Jerman, Hermann Tilke. Sirkuit sepanjang 5.077 meter ini sebenarnya merupakan pengganti Balatonring di Hongaria yang tidak selesai. Sirkuit ini memiliki panjang 5,344 km (FIA) dan 5,078 (FIM). Sirkuit yang mempunyai 10 tikungan ke kiri dan 7 tikungan ke kanan tersebut dinobatkan sebagai “The best Grand Prix of The Year” pada musim 2010 oleh IRTA karena telah menyelenggarakan balapan terorganisir dengan baik. Sirkuit ini biasa dipakai untuk tempat balapan MotoGP dan World Series By Renault."
    },
    {
      "judulll": "Chang International Circuit",                          
      "pictt": "15 Buriram Thailand.png",             
      "nomorr": "Thailand",         
      "infodetaill": "Sirkuit Internasional Buriram atau Sirkuit Internasional Chang untuk alasan sponsor (bahasa Thai: ช้าง อินเตอร์เนชั่นแนล เซอร์กิต) merupakan sebuah sirkuit balap yang terletak di provinsi Buriram, Thailand atau sekitar 392 km dari Ibu kota Bangkok. Sirkuit yang dirancang oleh Hermann Tilke ini mulai dibangun pada Maret 2013 dan telah menelan biaya sebesar 2 miliar Baht (sekitar Rp 740 miliar). Sirkuit ini mulai dibuka pada 4 Oktober 2014 dan memiliki panjang lintasan 4.554 meter serta 12 tikungan. Fasilitas Tribun utama Gedung yang menjadi bangunan utama sirkuit terbagi menjadi tiga lantai. Lantai dasar berisi 30 paddock untuk tim-tim yang akan bertanding di sirkuit ini. Di lantai 2 terdapat sejumlah ruangan VIP dan ada empat ruang media center yang nyaman bagi para jurnalis yang dilengkapi dengan koneksi internet yang lancar serta beberapa layar televisi yang menampilkan situasi di atas lintasan. Lantai 2 juga menjadi akses untuk masuk ke area grand stand yang terbagi 22 area untuk menyaksikan jalannya balapan. Sirkuit Internasional Chang memiiliki kapasitas penonton sebesar 50.000 orang, selain itu sirkuit ini juga sudah mendapatkan sertifikasi tinggi dari FIA (grade 1) dan FIM (grade A) yang tidak akan mustahil bisa menyelenggarakan ajang kelas dunia, seperti Formula Satu dan MotoGP. Pada September 2017, Dorna Sports mengumumkan bahwa MotoGP digelar di Sirkuit Internasional Buriram, dengan kesepakatan selama tiga tahun mulai tahun 2018 sampai dengan 2020 untuk balapan bernama PTT Thailand Grand Prix."
    },
    {
      "judulll": "Twin Ring Motegi, Motegi",                           
      "pictt": "16 Motegi Jepang.png",                
      "nomorr": "Jepang",           
      "infodetaill": "Twin Ring Motegi (ツインリンクもてぎ Tsuin Rinku Motegi) adalah Sirkuit motorsport yang terletak di kota Hiyama Motegi, Distrik Haga, Tochigi, Jepang. Sirkuit ini dibangun oleh Honda pada tahun 1997 untuk membawa Indycar ke Jepang dan digunakan juga sebagai laboratorium bagi Honda."
    },
    {
      "judulll": "Phillip Island",                   
      "pictt": "17 Phillip Island Australia.png",     
      "nomorr": "Australia",        
      "infodetaill": "Sirkuit Grand Prix Phillip Island adalah sebuah sirkuit balapan yang terletak di Pulau Phillip, Australia. Sirkuit ini memiliki panjang 4,4 km dan telah dibuka sejak tahun 1928. Sirkuit ini telah sukses menggelar beberapa balapan diantaranya Grand Prix Australia, MotoGP, World Superbike dan beberapa balapan lokal lainnya."
    },
    {
      "judulll": "Sepang International Circuit",                           
      "pictt": "18 Sepang Malaysia.png",              
      "nomorr": "Malaysia",         
      "infodetaill": "Sirkuit Internasional Sepang (Sepang International Circuit/SIC) merupakan sirkuit yang digunakan untuk Malaysian Grand Prix Formula Satu,[2] A1 Grand Prix dan juga Malaysian Motorcycle Grand Prix. Sirkuit ini juga digunakan untuk berbagai macam event motorsport."
    },
    {
      "judulll": "Ricardo Tormo",                    
      "pictt": "19 Valencia.png",                     
      "nomorr": "Valencia",         
      "infodetaill": "Circuit Ricardo Tormo merupakan sebuah sirkuit balap di Spanyol yang terletak di dekat Valencia. Sirkuit ini dibangun pada tahun 1999 dan mengadakan balapan pertama MotoGP dan Spanyol motor Championships pada tahun yang sama. Jalur Cheste memiliki beberapa layout, menjalankan anti-searah jarum jam dengan panjang yang bervariasi. Circuit Ricardo Tormo memiliki trek yang terdiri dari lima 4 km sudut tangan kanan, delapan handers kiri dan trek lurus sejauh 650m. Meskipun melihat jalur yang dianggap cukup kecil, sirkuit ini memiliki kompleks pit berisi 48 garasi dan podium stadion dapat menampung hingga 150.000 penonton."
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
            
            child: new Row(//row
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
                      child: new Image.asset("img/$pictt", fit: BoxFit.cover, width: 100.0, height: 100.0,),
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
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text(
          "Circuit MotoGP",
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Image.asset("img/clogo.png"),
            new Expanded(
              child: new ListView(
                children: daftarcircuit,
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

          new NamaCircuit(judulll: judulll, nomorr: nomorr,),
          new InfoCircuit(infodetaill: infodetaill,),
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
  InfoCircuit({this.infodetaill});
  final String infodetaill;
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
                infodetaill,
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
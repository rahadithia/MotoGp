import 'package:flutter/material.dart';
import './hal_informasi.dart' as info;
import './hal_rider.dart' as rider;
import './hal_jadwal.dart' as jadwal;
import './hal_score.dart' as score;
import './hal_circuit.dart' as circt;
// import 'dart:developer';

//void main() {
//  runApp(MaterialApp(
//    title: 'Navigation',
//    home: BottomNavPage(),
//  ));
//}

class BottomNavPage extends StatefulWidget{
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> with SingleTickerProviderStateMixin {
  List<Container> beritamotogp = new List();

  var berita = [
    {
      "judul": "Rossi Pensiun MotoGP ?", 
      "pic": "Berita01.jpeg",
      "tanggal": "24 Desember 2019",
      "teks": " Kontrak Rossi dengan Yamaha akan berakhir usai MotoGP 2020. Pebalap asal Italia itu akan berulang tahun ke-41 pada Februari 2020 dan sedang dalam posisi mempertimbangkan masa depan di MotoGP.” harap Rossi. (DN/eV)"
    },
    {
      "judul": "Rossi Perpanjang Kontrak !", 
      "pic": "berita2.jpg",
      "tanggal": "28 November 2019",
      "teks": "LESMO – Mantan pembalap 500 cc, Nico Cereghini, turut mengomentari masa depan Valentino Rossi di MotoGP. Ia menilai peluang besar dimiliki Rossi untuk menorehkan karier yang lebih panjang lagi di kompetisi balap motor grand prix paling bergengsi ini.\r\n\r\n    Cereghini mengatakan peluang Rossi untuk terus memperpanjang kariernya di MotoGP bisa terealisasi lewat hasil di MotoGP 2020. Jika penampilan yang diberikan ternyata jauh lebih baik dari musim-musim sebelumnya, The Doctor –julukan Rossi– dipercaya akan mempertimbangkan lebih lanjut untuk tak pensiun lebih dahulu.\r\n    Masa depan Rossi kini memang tengah menjadi perbincangan hangat di publik. Banyak pihak meyakini pembalap asal Italia itu akan segera menyusul mantan rekan setimnya, Jorge Lorenzo, untuk pensiun. Pasalnya, penampilan yang ditunjukkan Rossi terus mengalami penurunan. \r\n    Ia bahkan sampai saat ini belum bisa melepas dahaganya akan kemenangan. Juara sembilan kali itu terakhir kali merasakan manisnya naik podium pertama pada musim 2017, tepatnya dalam balapan di Sirkuit Assen, Belanda. Mendapati situasi ini, Cereghini tetap optimis dengan masa depan Rossi.\r\n    Ia bahkan yakin pembalap asal Italia masih punya peluang memperpanjang kontraknya di MotoGP setelah habis bersama Yamaha pada 2020. “Valentino (Rossi) harus melihat apa yang akan terjadi dengan perubahan yang telah dibuatnya di tim. Dia akan membalap hingga 2020, banyak yang mengatakan dia harus berhenti dan beberapa mengatakan dia harus melakukannya bahkan 10 tahun yang lalu,” ujar Cereghini, sebagaimana dikutip dari Tutto Motori Web, Kamis (28/11/2019).\r\n\r\n    “Tetapi, saya pikir seseorang seperti dia dapat melakukan apa yang dia inginkan, setelah semua yang dia lakukan. Memang benar, dia bisa pergi selama dia menyukainya. Setelah musim seperti ini, keinginan bisa saja hilang, tetapi jika membaik, siapa tahu?” tukasnya.\r\n\r\n    (dji)"
    },
    {
      "judul": "Marquez Setelah Operasi . . .", 
      "pic": "berita3.jpg",
      "tanggal": "28 November 2019",
      "teks": "BARCELONA – Pembalap andalan Repsol Honda, Marc Marquez, baru saja menjalani operasi guna menyembuhkan cedera bahu kanan yang dideritanya. Setelah operasi berjalan sukses, Marquez pun mengungkap kondisinya.\r\n\r\n    Marquez mengaku senang karena operasinya bisa berjalan dengan baik. Kini, ia pun akan mulai fokus menjalani pemulihan agar kondisi lengannya bisa segera membaik pascaoperasi. Tak lupa, Marquez juga mengucapkan terima kasih kepada pihak yang telah memberikan dukungan kepadanya.\r\n    Hal tersebut disampaikan pembalap berjuluk The Baby Alien itu lewat sebuah cuitan di akun Twitter pribadinya, @marcmarquez93. Dalam cuitannya, Marquez juga turut mengunggah potretnya yang masih terbaring di atas kasur.\r\n    “Selamat pagi! Saya kurang lebih baru terbangun. Operasi berjalan dengan baik dan saya akan memulai pemulihan! Terima kasih atas dukungan Anda,” cuit Marquez di akun Twitter pribadinya, @marcmarquez93, Kamis (28/11/2019). Usai menyelesaikan tes pramusim MotoGP 2020 di Sirkuit Jerez, Spanyol, Marquez memang memutuskan untuk langsung naik meja operasi. \r\n    Sebab, ia mengalami masalah di bahu kanannya sejak gelaran MotoGP 2019 masih berlangsung. Tetapi, padatnya agenda yang harus dijalani bersama Repsol Honda memaksanya untuk menunda operasi. Kini, operasi yang dijalani di Rumah Sakit Universitas Dexeus-Quiron, Barcelona, pada Kamis (28/11/2019) dini hari tadi WIB pun diketahui berjalan dengan lancar.\r\n\r\n    (dji)"
    },
    {
      "judul": "Keputusan Pensiun Lorenzo . . .", 
      "pic": "berita4.jpg",
      "tanggal": "28 November 2019",
      "teks": "BRESCIA – Legenda balap MotoGP, Giacomo Agostini, turut mengomentari keputusan Jorge Lorenzo untuk pensiun. Ia mengaku terkejut mendengar keputusan tersebut lantaran sang pembalap dinilai masih begitu muda.\r\n\r\n    Lorenzo memang telah dipastikan mengakhiri karier balapnya di dunia MotoGP pada akhir musim 2019. Balapan di Sirkuit Ricardo Tormo, Valencia, yang digelar beberapa pekan lalu itu pun jadi penampilan terakhir sang pembalap di dunia MotoGP. \r\n    Keputusan ini diambil lantaran Lorenzo mengalami masalah dengan fisiknya. Ia tak lagi dapat berada di kondisi yang prima seperti sedia kala setelah mengalami kecelakaan parah di Sirkuit Assen, Belanda. Kecelakaan tersebut diketahui telah mengakibatkan pembalap berjuluk Por Fuera itu mengalami retak tulang belakang.\r\n    Setelah absen beberapa bulan untuk menyembuhkan cedera tulang belakangnya, Lorenzo tetap tak bisa mengembalikan performa impresifnya di atas sirkuit. Alhasil, ia terus menelan pil pahit dalam balapan. Kondisi ini memperburuk debut Lorenzo di Honda yang sebelumnya berjalan kurang baik karena kesulitan beradaptasi dengan motor. \r\n    Melihat potensi besar yang dimiliki Lorenzo, Agostini mengaku terkejut mendengar keputusan sang pembalap untuk pensiun. Tetapi, ia tetap menghargainya karena menyadari kondisi yang dialami peraih enam gelar juara itu sudah tak baik lagi. “Pensiunnya Jorge (Lorenzo) sungguh membuat saya terkejut. Saya sangat prihatin melihat seorang juara yang masih begitu muda harus pensiun. \r\n    Tapi, memperebutkan posisi belakang memang tak baik baginya maupun Honda,\" ujar Agostini, sebagaimana dikutip dari Tutto Motori Web, Kamis (28/11/2019)."
    },
    {
      "judul": "Yamaha Belum Puas !", 
      "pic": "berita5.jpg",
      "tanggal": "27 November 2019",
      "teks": "JEREZ – Manajer Tim Monster Energy Yamaha, Massimo Meregalli, menilai positif hasil tes pramusim MotoGP 2020 di Sirkuit Jerez. Akan tetapi, ia belum merasa puas karena masih ada beberapa area yang memerlukan perbaikan.\r\n\r\n    Pada tes pramusim MotoGP 2020 pertama di Valencia, pembalapnya yakni Maverick Vinales tampil menjadi yang tercepat. Begitu pun pada tes pramusim kedua di Jerez, di mana Vinales berhasil menempati posisi pertama dari hasil keseluruhan tes dalam dua hari.\r\n    Melihat hal itu, Meregalli tak ingin jemawa dan merasa ada pekerjaan yang harus dilakukan Yamaha jelang MotoGP 2020. Salah satu fokus Meregalli yang masih membutuhkan peningkatan, salah satunya untuk mencapai top speed. “Kami masih memiliki pekerjaan yang harus dilakukan untuk balapan pertama, tetapi bagi saya, ketika saya melihat ke belakang, ketika kami mencoba item baru dalam dua tahun terakhir, kami tidak pernah mencapai titik ini. \r\n    Saya bisa melihat itu menjanjikan,” ungkap Meregalli, mengutip dari laman resmi Monster Energy Yamaha, Rabu (27/11/2019). “Pembalap selalu mencari hal lebih banyak, tetapi apa yang kami cari adalah meningkatkan kelancaran dan meningkatkan top speed secara bertahap, dan kami melakukannya. Area yang masih harus kami coba tingkatkan adalah top speed, dan saya yakin kami akan mencapai itu,” tambahnya. Sementara itu, rekannya Vinales yakni Valentino Rossi belum bisa menunjukkan performa terbaik. \r\n    Pembalap veteran tersebut hanya berhasil menduduki posisi ke-11 dari hasil keseluruhan tes dalam dua hari tersebut."
    },
    {
      "judul": "Rins Puas Mesin Baru Suzuki", 
      "pic": "berita6.jpg",
      "tanggal": "27 November 2019",
      "teks": "JEREZ – Pembalap Tim Suzuki Ecstar, Alex Rins, mengaku puas dengan mesin baru yang ia gunakan pada tes pramusim MotoGP 2020 Jerez. Pada hari kedua yang berlangsung kemarin, Rins pun mencatatkan waktu apik dengan duduk di urutan kedua.\r\n\r\n    Selama mentas di tes pramusim tersebut, Rins mampu menjalankan putaran cepat secara konsiten. Meski tak melanjutkan tes hingga akhir karena hujan lebat, Rins merasa puas dengan pencapaiannya pada dua hari uji coba di Sirkuit Jerez.\r\n\r\n    Rins memiliki perbedaan 0,017 detik dari Marc Marquez (Repsol Honda) yang berhasil menempati urutan pertama pada hari terakhir Tes Jerez. Akan tetapi, berdasarkan hasil kombinasi dua hari tes, Rins menduduki urutan ketiga dengan catatan yang sama yakni 1 menit 37,837 detik. Sebagai hari terakhir tes pada tahun 2019, Rins sukses melanjutkan pekerjaan dengan spesifikasi 2020 dan mesin baru.\r\n    Setelah mengevaluasi performanya tersebut, pembalap berpaspor Spanyol itu merasa senang karena semuanya berjalan baik. “Dua hari ini sangat menyenangkan karena kami mengonfirmasi banyak hal dan kami puas dengan mesin baru,” ungkap Rins, mengutip dari laman resmi Tim Suzuki Ecstar, Rabu (27/11/2019).\r\n    “Saya hanya berhasil menyelesaikan dua putaran di tempat kering, tapi saya sangat senang dengan kecepatan saya, saya memperbaiki waktu putaran saya yang kemarin,” pungkas rekan setim Joan Mir tersebut. "
    },
    {
      "judul": "Operasi Marc Sukses !", 
      "pic": "berita7.jpg",
      "tanggal": "28 November 2019",
      "teks": "BARCELONA – Pihak Repsol Honda telah mengonfirmasi operasi bahu kanan Marc Marquez yang dilakukan di Rumah Sakit Universitas Dexeus-Quiron, Barcelona, berjalan sukses pada Kamis (28/11/2019) dini hari WIB tadi. Dengan suksesnya operasi bahu kanan tersebut, Marquez pun diminta untuk tetap beristirahat di rumah sakit selama dua hari.\r\n\r\n    Suksesnya operasi bahu kanan Marquez itu merupakan kabar yang sangat baik bagi pembalap berjuluk The Baby Alien tersebut. Sebab ia bakal lebih siap lagi untuk menyambut gelaran MotoGP 2020 yang bakal berlangsung pada Maret tahun depan. “Marquez baru boleh pulang (dari rumah sakit) setelah 48 jam ke depan. Dia lalu akan memulai masa pemulihannya dan pada musim dingin baru mempersiapkan diri untuk tes di Sepang, Malaysia,” tulis pernyataan Honda di laman resmi mereka, Kamis (28/11/2019).\r\n\r\n    Tentu kondisi fisik yang fit memang menjadi target utama Marquez sebelum beristirahat panjang di akhir musim 2019 ini. Ia tak mau menahan rasa sakit terhadap bahu kanannya yang sudah ia rasakan semenjak MotoGP Jepang 2019 pada Oktober yang lalu. Ya, Marquez sebenarnya sudah merasakan tidak enak terhadap bahu kanannya semenjak seri Jepang lalu. Namun, kondisi tersebut diperparah dengan kecelakaan yang dialaminya saat tampil di sesi kualifikasi MotoGP Malaysia 2019. \r\n    Kecelakaan di Sirkuit Sepang tersebut membuat bahu kanan Marquez mengalami subluksasi. Lalu, kecelakaan pada hari kedua tes pramusim MotoGP 2019 di Jerez semakin membuat bahu kanan Marquez semakin tidak enak. Karena itulah ia pun memutuskan untuk menjalani operasi pada Rabu 27 Novemver 2019 waktu setempat. "
    },
    {
      "judul": "Quartararo Curhat . . .", 
      "pic": "news3.jpg",
      "tanggal": "29 November 2019",
      "teks": " Jerez - MotoGP 2019 telah selesai digelar. Kini, sejumlah rider dan tim mulai mempersiapkan diri menyongsong perhelatan MotoGP 2020, termasuk Yamaha dan Fabio Quartararo.\r\n\r\n    Pada Selasa (26/11/2019), Quartararo melakukan uji coba mesin Yamaha baru untuk MotoGP 2020. Uji coba tersebut dilaksanakan di Sirkuit Jerez dalam kondisi trek yang masih basah karena sempat diguyur hujan. \r\n    El Diablo melontarkan pujian atas performa motor YZR-M1 yang akan menemaninya pada 2020. \r\n    Namun, bukan Quartararo jika tak mencatatkan cerita menarik dalam momen uji cobanya itu.\r\n    Rider asal Prancis itu membuat kenakalan khas anak muda. Melansir dari Speedweek, Kamis (28/11/2019), Quartararo mengklaim motor barunya ini tak sebaik motor tua yang dipakai sebelumnya.\r\n    \"Saya merasa, motor ini tidak lebih baik daripada motor tua yang saya tunggangi dahulu,\" ujar Quartararo.\r\n    Meski demikian, Quartararo tidak mengatakan secara gamblang pendapatnya tentang motor baru itu kepada manajemen Yamaha. Kepada manajemen, pria berusia 20 tahun itu hanya memberi masukan bahwa timnya harus menambah suplai daya pada YZR-M1 edisi 2020.\r\n    \"Tentu saja saya tidak mengatakan hal ini kepada Yamaha. Saya hanya mengatakan ini kepada wartawan. Saya tidak ingin membuat orang-orang marah pada saya,\" ujar Quartararo kepada para wartawan yang meliput MotoGP. "
    },
    {
      "judul": "Marc Tak Banyak Membantu Adiknya", 
      "pic": "berita9.jpg",
      "tanggal": "29 November 2019",
      "teks": "Jerez - Marc Marquez dan Alex Marquez sepertinya mulai membangun tembok transparan di antara mereka sejak bertandem di Repsol Honda. Di hari pertama uji coba setelah musim MotoGP Jerez, Spanyol, Senin (25/11/2019), kakak beradik ini tidak banyak mengobrol, apalagi soal hal-hal teknis.\r\n\r\n    Alex secara mendadak bergabung dengan Repsol Honda setelah Jorge Lorenzo memutuskan pensiun dari MotoGP akhir musim ini. Pada uji coba Valencia pekan lalu, Alex memulai debutnya dengan kru Takaaki Nakagami di LCR Honda, namun mulai bergabung dengan garasi berwarna oranye di Jerez. \r\n    Marc Marquez tak memberi banyak bantuan pada sang adik, karena punya tugas sendiri mengembangkan RC213V 2020. Dalam uji coba Jerez saja, ia harus melakukan perbandingan tiga motor. Kepada Marca, ia memberikan kesan-kesan berbagi garasi dengan sang adik untuk pertama kalinya.\r\n\r\n    \"Rasanya sama saja seperti tandem-tandem saya yang lainnya. Kami fokus pada masing-masing garasi. Satu-satunya hal yang kami lakukan bersama adalah traveling, karena kami meninggalkan dan tiba di tempat yang sama,\" tutur Marc Marquez.\r\n\r\n    Peraih gelar juara dunia delapan kali ini juga yakin bantuannya takkan punya pengaruh signifikan pada sang adik, karena Alex punya gaya balap dan kebutuhan berbeda dibanding dirinya. Atas alasan ini, lebih baik mereka bekerja sendiri-sendiri.\r\n\r\n    \"Alex fokus pada garasi dan kantornya sendiri, begitu pula saya. Masing-masing rider punya dinamikanya sendiri, arah pengembangannya sendiri, dan ia yang tahu apa yang terbaik untuk dirinya sendiri,\" ungkap juara MotoGP 2019 itu Komentar senada pun dilontarkan Alex kepada Marca.\r\n     Juara dunia Moto3 2014 dan Moto2 2019 ini bahkan mengaku sama sekali tak bertatap muka dan berdiskusi dengan sang kakak selama enam jam menjalani uji coba.\r\n\r\n    \"Saya tak bertemu dengannya. Semua fokus pada tugas masing-masing. Marc punya banyak perangkat yang harus dijajal, sementara saya fokus pada diri saya sendiri. Saya coba memperbaiki diri selangkah demi selangkah. Saya ingin lebih dekat dengan para rider terdepan,\" tuturnya.\r\n\r\n    Dalam uji coba Valencia dan Jerez, Alex masih berlatih dengan motor RCV 2019, belum diketahui kapan ia akan diberi kesempatan menjajal RCV 2020."
    },
    {
      "judul": "Jorge Lorenzo Kabur Ke Bali !", 
      "pic": "berita10.jpg",
      "tanggal": "22 November 2019",
      "teks": "Valencia - MotoGP Valencia, Spanyol, akhir pekan lalu, menjadi balapan terakhir Jorge Lorenzo. Pria berusia 32 tahun itu pensiun setelah mengalami cedera tulang punggung.\r\n\r\nPada balapan terakhirnya di MotoGP, Lorenzo finis di posisi ke-13. Hasil itu pun tak membuatnya pusing karena dia sudah menyabet lima gelar juara dunia, tiga di antaranya di kelas MotoGP. Usai balapan di Valencia, Lorenzo langsung bersiap liburan. \r\nMengutip dari GPOne, usai balapan MotoGP Valencia, Lorenzo memutuskan untuk pelesir ke Bali, Indonesia.\r\n\r\n\"Sayasudah pesan tiket ke Bali di Indonesia! Orang di sana baik sekali dan saya sudah tak sabar melarikan diri dari hawa dingin di sini,\" ucapnya.\r\n\r\nSementara itu, di akun Instagram pribadinya, Lorenzo sedang mempersiapkan diri dalam perjalanan menuju Pulau Dewata.\r\n\r\n\"Berkemas. Bali memanggil. #liburan #Bali,\" kata pria yang memenangkan 47 balapan di kelas MotoGP tersebut. Pada Juni lalu, Lorenzo mengalami kecelakaan saat latihan di Sirkuit Assen, Belanda. \r\nKecelakaan itu membuatnya mengalami cedera tulang belakang dan memaksa Jorge Lorenzo absen dalam empat balapan di MotoGP musim ini.\r\n\r\nTekad pembalap berusia 32 tahun itu untuk pensiun kian mantap saat balapan di MotoGP Malaysia, 3 November lalu. Kini, jelang balapan di Valencia, dia pun mengumumpannya secara resmi.\r\n\r\n\"Saya pertama kali berpikir tentang pensiun saat cedera di Assen. Akhirnya saya mantap pensiun usai balapan di Malaysia,\" ucap mantan pembalap Ducati itu."
    },
  ];

  _buatlist() async {
    for (var i = 0; i < berita.length; i++) {
      final beritanya = berita[i];
      final String pic = beritanya["pic"];
      beritamotogp.add(
        new Container(
          padding: EdgeInsets.all(5.0),
          child: new Card(
            child: new Column(
              children: <Widget>[

                //Untuk menampilkan gambar menjadi ukuran besar
                new Hero(
                  //Tag sebagai id (identitas)
                  tag: beritanya['judul'],
                  //Material animasi untuk proses dari gambar kecil ke besar
                  child: new Material(
                    //Melakukan animasi (memperbesar / memperkecil) gambar
                    child: new InkWell(
                      //untuk ke halaman baru
                      onTap: () =>
                          Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        //Berpindah kehalaman detail
                            new Detail(judul: beritanya['judul'], pic: pic, tanggal: beritanya['tanggal'], teks: beritanya['teks'],),
                      )),
                      //Untuk menampilkan gambar dihalaman awal
                      child: new Image.asset("img/$pic", fit: BoxFit.cover),
                    ),
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                //Untuk menampilkan judul berita dihalaman awal
                new Text(beritanya['judul'],
                    style: new TextStyle(fontSize: 12.0)),
              ],
            ),
          ),
        ),
      );
    }
  }

  TabController controller;
  @override
  void initState() {
    _buatlist();
    super.initState();
  //controller = new TabController(vsync: this, length: 4, initialIndex: 0);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  //int _selectedTabIndex = 0;

  //void _onNavBarTapped(int index) {
  //  setState(() {
  //   _selectedTabIndex = index; 
  //  });
  //}

  @override
  Widget build(BuildContext context){

  //  final _listPage = <Widget>[
  //    Text('Home'),
  //    Text('Setting'),
  //  ];

  //  final _BottomNavBarItems = <BottomNavigationBarItem>[
  //    BottomNavigationBarItem(
  //      icon: Icon(Icons.home),
  //      title: Text('Home'),
  //    ),

  //    BottomNavigationBarItem(
  //      icon: Icon(Icons.settings),
  //      title: Text('Setting'),
  //    ),
  //  ];

  //  final _btmnavbar = BottomNavigationBar(
  //    items: _BottomNavBarItems,
  //    currentIndex: _selectedTabIndex,
  //    onTap: _onNavBarTapped,
  //  );

    return Scaffold(
      //appBar: AppBar(
      //  centerTitle: true,
      //  backgroundColor: Colors.black,
      //  title: new Text("MotoGP Information"),
      //),

      body: CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 50.0,
            floating: false,
            pinned: false,
            centerTitle: true,
            title: new Container(
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              decoration: new BoxDecoration(
                color: new Color.fromARGB(50, 255, 255, 255),
                borderRadius: new BorderRadius.all(Radius.circular(22.0)),
              ),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: new Container(
                      padding: new EdgeInsets.symmetric(horizontal: 10.0),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    flex: 0,
                    child: new Container(
                      padding: new EdgeInsets.symmetric(horizontal: 5.0),
                      child: new Row(
                        children: <Widget>[
                          new IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.search, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              new GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.info,
                      iconColor: Colors.blue,
                      label: 'Information',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return info.Info();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.person_pin,
                      iconColor: Colors.blue,
                      label: 'Rider',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return rider.Rider();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.directions_bike,
                      iconColor: Colors.blue,
                      label: 'Circuit',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return circt.Circuit();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.view_headline,
                      iconColor: Colors.blue,
                      label: 'See All',
                    ),
                    onPressed: (){
                      _settingModalBottomSheet(context);
                    },
                  ),
                ],
              ),
            ]),
          ),

          new Container(
            child: new SliverFillRemaining(
              child: new Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.all(10.0),),
                  new Text(
                    "NEWS :",
                    style: new TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Serif",
                      color: Colors.black,
                    ),
                  ),
                  new Expanded(
                    child: new GridView.count(
                      crossAxisCount: 2,
                      children: beritamotogp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //SliverFillRemaining(
          //  child: new GridView.count(
          //    crossAxisCount: 2,
          //    children: beritamotogp,
          //  ),
          //),
        ],
      ),
      //bottomNavigationBar: _btmnavbar,
    );
  }
}

//Untuk melihat semua menu icon
void _settingModalBottomSheet(context){
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext bc){
      return new Container(
        height: 200.0,
        child: new ListView(
          children: <Widget>[
            new GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: <Widget>[
                new IconButton(
                  icon: MenuIcon(
                      icon: Icons.info,
                      iconColor: Colors.blue,
                      label: 'Information',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return info.Info();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.person_pin,
                      iconColor: Colors.blue,
                      label: 'Rider',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return rider.Rider();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.directions_bike,
                      iconColor: Colors.blue,
                      label: 'Circuit',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return circt.Circuit();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.schedule,
                      iconColor: Colors.blue,
                      label: 'Schedule',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return jadwal.JadwalNav();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.flag,
                      iconColor: Colors.blue,
                      label: 'Ranking',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return score.Infoscore();
                      }));
                    },
                  ),
              ],
            ),
          ],
        ),
      );
    }
  );
}

// Class Untuk Menu Icon
class MenuIcon extends StatelessWidget {

  final IconData icon;
  final Color iconColor;
  final String label;

  MenuIcon({
    this.icon,
    this.iconColor,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              color: iconColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon,
                color: iconColor
              ),
            ),
          ),
          new SizedBox(height: 5.0),
          new Text(label),
        ],
      ),
    );
  }
}

//Halaman detail berita
class Detail extends StatelessWidget {
  Detail({this.judul, this.pic, this.teks, this.tanggal});
  final String judul;
  final String pic;
  final String teks;
  final String tanggal;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: new Hero(
              tag: judul,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("img/$pic", fit: BoxFit.cover),
                ),
              ),
            ),
          ),

          new Bagianjudul(
            judul: judul,
            tanggal: tanggal,
          ),
          new Bagianberita(
            teks: teks,
          ),
        ],
      ),
    );
  }
}

//Bagian judul ketika detail berita
class Bagianjudul extends StatelessWidget {
  Bagianjudul({this.judul, this.tanggal, this.teks});
  final String judul;
  final String tanggal;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(25.0),
      child: new Row(
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                tanggal,
                style: new TextStyle(fontSize: 15.0, color: Colors.grey)
              ),
              new Text(
                judul,
                style: new TextStyle(fontSize: 20.0, color: Colors.red)
              ),

            ],
          ),
        ],
      ),
    );
  }
}

//Bagian berita ketika detail berita
class Bagianberita extends StatelessWidget {
  Bagianberita({this.teks});
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(teks, 
          style: new TextStyle(fontSize: 18.0),
          textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
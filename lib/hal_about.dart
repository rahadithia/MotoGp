import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text(
          "About",
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(20.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Pembaruan Aplikasi :",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),
                new Text(" "),
                    new Text(
                    "Aplikasi MotoGP Information ini dapat diperbaharui sesuai berita yang telah terupdate. Pengguna harus terhubung ke Internet untuk dapat mengakses info terupdate dari aplikasi ini.",
                      style: new TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                new Text(" "),
                new Text(
                  "Kebijakan Data :",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),
                new Text(" "),
                new Text(
                  "I. Jenis informasi apa yang kami kumpulkan ?",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),
                new Text(" "),
                new Text(
                  "Guna menyediakan layanan berita, kami harus memproses informasi terupdate yang kami kumpulkan dari sumber yang valid. Anda dapat mempelajari cara mengakses produk kami dengan mudah tanpa harus mengeluarkan biaya.",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "     > Informasi dan konten yang kami berikan",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),
                new Text(" "),
                new Text(
                  "Kami mengumpulkan konten dan informasi berupa gambar dan berita terupdate seputar kujuaraan MotoGP. Informasi yang kami berikan hanya seputar tentang rider dari kelas MotoGP berupa data pribadi mereka serta informasi terupdate mengenai rider tersebut.",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "     > Jaringan dan koneksi",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),          
                new Text(" "),
                new Text(
                  "Untuk menggunakan aplikasi ini, pengguna harus memiliki jaringan yang terhubung langsung dengan alamat IP yang terhubung langsung dengan API server, sehingga pengguna dapat mengakses informasi yang kami berikan dalam aplikasi ini.",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),        
                new Text(
                  "II. Tentang Aplikasi ?",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),          
                new Text(" "),
                new Text(
                  "Aplikasi ini dibuat menyelesaikan tugas Praktek Kerja Lapangan dari Universitas Islam Negeri Syarif Hidayatullah Jakarta. Aplikasi ini dibuat di PT. Mozaik Bintang Persada (Tempat kami melaksanakan praktek kerja lapangan), dan aplikasi ini diperuntukkan PT. Mozaik Bintang Persada.",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "III. Tentang Kami ?",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                ),             
                new Text(" "),
                new Text(
                  "     > Desain UI/UX :",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "1. Kevin Panca",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "2. Galuh",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "     > Android Developer :",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "1. Muhammad Yossy Kusuma",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "2. Rahaditya Prayudha",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "     > Web Developer :",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "1. Suryaman",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bold',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                new Text(" "),
                new Text(
                  "2. Yusuf Fauzan",
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
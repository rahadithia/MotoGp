// import 'package:flutter/cupertino.dart';

class User {
  String no;
  String namarider;
  String flag;
  String poin;

  User({this.no, this.namarider, this.flag, this.poin});

  static List<User> getUser(){
    return <User>[
      User(no: "1", namarider: "[93] Marc Marquez",       flag: "Spain", poin: "420"),
      User(no: "2", namarider: "[04] Andrea Dovizioso",   flag: "Italia", poin: "269"),
      User(no: "3", namarider: "[12] Mavreck Vinales",    flag: "Spain", poin: "211"),
      User(no: "4", namarider: "[42] Alex Rins",          flag: "Spain", poin: "205"),
      User(no: "5", namarider: "[20] Fabio Quartararo",   flag: "France", poin: "192"),
      User(no: "6", namarider: "[9] Danilo Petrucci",     flag: "Italia", poin: "176"),
      User(no: "7", namarider: "[46] Valentino Rossi",    flag: "Italia", poin: "174"),
      User(no: "8", namarider: "[43] Jack Miller",        flag: "Australia", poin: "165"),
      User(no: "9", namarider: "[35] Cal Crutchlow",      flag: "British", poin: "133"),
      User(no: "10", namarider: "[21] Franco Morbidelli", flag: "Italia", poin: "115"),
      User(no: "11", namarider: "[44] Pol Espargaro",     flag: "Spain", poin: "100"),
      User(no: "12", namarider: "[36] Joan Mir",          flag: "Spain", poin: "92"),
      User(no: "13", namarider: "[30] Takaaki Nakagami",  flag: "Japan", poin: "74"),
      User(no: "14", namarider: "[41] Aleix Espargaro",   flag: "Spain", poin: "63"),
      User(no: "15", namarider: "[63] Francesco Bagnaia", flag: "Italia", poin: "54"),
      User(no: "16", namarider: "[29] Andrea Iannone",    flag: "Italia", poin: "43"),
      User(no: "17", namarider: "[88] Miguel Oliveira",   flag: "Portugal", poin: "33"),
      User(no: "18", namarider: "[5] Johann Zarco",       flag: "France", poin: "30"),
      User(no: "19", namarider: "[99] Jorge Lorenzo",     flag: "Spain", poin: "28"),
      User(no: "20", namarider: "[53] Tito Rabat",        flag: "Spain", poin: "23"),
      User(no: "21", namarider: "[6] Stefan Bradl",       flag: "Germany", poin: "16"),
      User(no: "22", namarider: "[51] Michele Pirro",     flag: "Italia", poin: "9"),
      User(no: "23", namarider: "[55] Hafizh Syahrin",    flag: "Malaysia", poin: "9"),
      User(no: "24", namarider: "[17] Karel Abraham",     flag: "Czech", poin: "9"),
      User(no: "25", namarider: "[50] Sylvain Guintoli",  flag: "France", poin: "7"),
      User(no: "26", namarider: "[82] Mika Kallio",       flag: "Finnish", poin: "7"),
      User(no: "27", namarider: "[38] Bradley Smith",     flag: "British", poin: "0"),
      User(no: "28", namarider: "[27] Iker Lecuona",      flag: "Spain", poin: "0"),
    ];
  }
}
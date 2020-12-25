import 'dart:convert';

Homeberita homeberitaFromJson(String str) => Homeberita.fromJson(json.decode(str));

String homeberitaToJson(Homeberita data) => json.encode(data.toJson());

class Homeberita {
    int code;
    bool status;
    String message;
    List<Datum> data;

    Homeberita({
        this.code,
        this.status,
        this.message,
        this.data,
    });

    factory Homeberita.fromJson(Map<String, dynamic> json) => Homeberita(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String gambar;
    String judul;
    String teks;
    DateTime tanggal;

    Datum({
        this.id,
        this.gambar,
        this.judul,
        this.teks,
        this.tanggal,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        gambar: json["gambar"],
        judul: json["judul"],
        teks: json["teks"],
        tanggal: DateTime.parse(json["tanggal"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "gambar": gambar,
        "judul": judul,
        "teks": teks,
        "tanggal": "${tanggal.year.toString().padLeft(4, '0')}-${tanggal.month.toString().padLeft(2, '0')}-${tanggal.day.toString().padLeft(2, '0')}",
    };
}

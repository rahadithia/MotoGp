import 'dart:convert';

Riders ridersFromJson(String str) => Riders.fromJson(json.decode(str));

String ridersToJson(Riders data) => json.encode(data.toJson());

class Riders {
    int code;
    bool status;
    String message;
    List<Datum> data;

    Riders({
        this.code,
        this.status,
        this.message,
        this.data,
    });

    factory Riders.fromJson(Map<String, dynamic> json) => Riders(
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
    String nama;
    int nomor;
    String motor;
    String tempatLahir;
    DateTime tanggalLahir;
    int berat;
    int tinggi;

    Datum({
        this.id,
        this.gambar,
        this.nama,
        this.nomor,
        this.motor,
        this.tempatLahir,
        this.tanggalLahir,
        this.berat,
        this.tinggi,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        gambar: json["gambar"],
        nama: json["nama"],
        nomor: json["nomor"],
        motor: json["motor"],
        tempatLahir: json["tempat_lahir"],
        tanggalLahir: DateTime.parse(json["tanggal_lahir"]),
        berat: json["berat"],
        tinggi: json["tinggi"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "gambar": gambar,
        "nama": nama,
        "nomor": nomor,
        "motor": motor,
        "tempat_lahir": tempatLahir,
        "tanggal_lahir": "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
        "berat": berat,
        "tinggi": tinggi,
    };
}

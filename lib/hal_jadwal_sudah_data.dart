import 'dart:convert';

Jadwal jadwalFromJson(String str) => Jadwal.fromJson(json.decode(str));

String jadwalToJson(Jadwal data) => json.encode(data.toJson());

class Jadwal {
    int code;
    bool status;
    String message;
    List<Datum> data;

    Jadwal({
        this.code,
        this.status,
        this.message,
        this.data,
    });

    factory Jadwal.fromJson(Map<String, dynamic> json) => Jadwal(
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
    String namaCircuit;
    String negara;
    DateTime tanggal;
    String motogp;

    Datum({
        this.id,
        this.gambar,
        this.namaCircuit,
        this.negara,
        this.tanggal,
        this.motogp,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        gambar: json["gambar"],
        namaCircuit: json["nama_circuit"],
        negara: json["negara"],
        tanggal: DateTime.parse(json["tanggal"]),
        motogp: json["motogp"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "gambar": gambar,
        "nama_circuit": namaCircuit,
        "negara": negara,
        "tanggal": "${tanggal.year.toString().padLeft(4, '0')}-${tanggal.month.toString().padLeft(2, '0')}-${tanggal.day.toString().padLeft(2, '0')}",
        "motogp": motogp,
    };
}

import 'dart:convert';

Circuits circuitsFromJson(String str) => Circuits.fromJson(json.decode(str));

String circuitsToJson(Circuits data) => json.encode(data.toJson());

class Circuits {
    int code;
    bool status;
    String message;
    List<Datum> data;

    Circuits({
        this.code,
        this.status,
        this.message,
        this.data,
    });

    factory Circuits.fromJson(Map<String, dynamic> json) => Circuits(
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
    String teks;

    Datum({
        this.id,
        this.gambar,
        this.namaCircuit,
        this.negara,
        this.teks,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        gambar: json["gambar"],
        namaCircuit: json["nama_circuit"],
        negara: json["negara"],
        teks: json["teks"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "gambar": gambar,
        "nama_circuit": namaCircuit,
        "negara": negara,
        "teks": teks,
    };
}

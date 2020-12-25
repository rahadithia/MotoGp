import 'package:http/http.dart';
import 'package:motogp_apk/hal_jadwal_sudah_data.dart';

class JadwalApiService {

  static const String baseUrl = "http://192.168.1.5:8000";
  // Client client = Client();

  static Future<Jadwal> getJadwal() async {
    Response response = await get("$baseUrl/api/schedule");

      return jadwalFromJson(response.body);
 
  }
}
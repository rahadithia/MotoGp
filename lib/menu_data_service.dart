import 'package:http/http.dart';
import 'package:motogp_apk/menu_data.dart';

class HomeberitaApiService {

  static const String baseUrl = "http://192.168.1.5:8000";
  // Client client = Client();

  static Future<Homeberita> getHomeberita() async {
    Response response = await get("$baseUrl/api/homeberita");

      return homeberitaFromJson(response.body);
 
  }
}
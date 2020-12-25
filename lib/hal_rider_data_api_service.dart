import 'package:motogp_apk/hal_rider_data.dart';
import 'package:http/http.dart';

class RiderApiService {

  static const String baseUrl = "http://192.168.1.5:8000";
  // Client client = Client();

  static Future<Riders> getRiders() async {
    Response response = await get("$baseUrl/api/pembalap");

      return ridersFromJson(response.body);
 
  }
}
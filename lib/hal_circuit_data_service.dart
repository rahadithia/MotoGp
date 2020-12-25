import 'package:http/http.dart';
import 'package:motogp_apk/hal_circuit_data.dart';

class CircuitApiService {

  static const String baseUrl = "http://192.168.1.5:8000";
  // Client client = Client();

  static Future<Circuits> getCircuits() async {
    Response response = await get("$baseUrl/api/circuit");

      return circuitsFromJson(response.body);
 
  }
}
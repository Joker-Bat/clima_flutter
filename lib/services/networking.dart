import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  const NetworkHelper(this.url);

  Future<dynamic> getData() async {
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}

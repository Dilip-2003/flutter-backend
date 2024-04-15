import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "http://localhost:4000/api/";
  static addProduct(Map productData) async {
    print(productData);
    var url = Uri.parse('${baseUrl}add_product');
    try {
      final response = await http.post(url, body: productData);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

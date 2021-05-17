import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future showFunction() async {
    print('inside the api service');
    final url = "http://192.168.100.15:3000/blogs/api/all";
    try {
      print("now trying");
      final response = await http.post(Uri.parse(url), headers: {
        "content-type": "application/json",
        "accept": "application/json"
      });
      final responseData = jsonDecode(response.body) as Map<String, dynamic>;
      // print(responseData);
      return responseData;
    } catch (error) {
      print("error----------");
      throw error;
    }
  }
}

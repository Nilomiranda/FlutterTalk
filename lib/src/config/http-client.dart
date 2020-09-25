import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';

class API {
  Future get(url) async {
    var res = await http.get("https://reqres.in/api/$url");
    return res.body;
  }
}

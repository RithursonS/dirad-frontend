import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ClientAPI {
  var client = http.Client();
  static const String baseUrl = 'http://10.0.2.2:8000/analyze';

 Future<dynamic> postData(String text) async {
   debugPrint("this is nothing");
    try{

      final uri = Uri.parse(baseUrl);


      var response = await http.post(uri,body:json.encode(<String, String>{
      'description': text,
      }),headers: {"Content-Type": "application/json" });
      debugPrint("this is response: ${response.body}");
      return response.body;
    }catch(e){
      debugPrint("${e}");
      return e;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // Make a request
    Response response = await get('https://worldtimeapi.org/api/timezone/Europe/London');
    Map data = jsonDecode(response.body);
    // print(data);

    String datetime = data['datetime];
    String offset = data['offset];
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen...'),
    ); // Scaffold
  }
}

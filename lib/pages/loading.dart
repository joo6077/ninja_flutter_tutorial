import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response =
        await get('https://worldtimeapi.org/api/timezone/Asia/Seoul');
    print(response.body);
  }

  @override
  void initState() {
    super.initState();
    print('initState function ran');
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}

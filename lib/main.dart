import 'package:flutter/material.dart';
import 'package:ninja_flutter_tutorial/pages/choose_location.dart';
import 'package:ninja_flutter_tutorial/pages/home.dart';
import 'package:ninja_flutter_tutorial/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));

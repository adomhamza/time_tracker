import 'package:flutter/material.dart';
import 'app/signin/signin.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      '/': (context) => SignIn(),
    },
  ));
}

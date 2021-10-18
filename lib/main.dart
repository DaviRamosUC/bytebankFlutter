import 'package:bytebank_2/http/webclient.dart';
import 'package:bytebank_2/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bytebank());
  findAll().then((transactions)=> print('new transactions => $transactions'));
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green[900],
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}

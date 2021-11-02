import 'package:bytebank_2/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'components/theme.dart';

void main() {
  runApp(Bytebank());
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: bytebankTheme,
      home: Dashboard(),
    );
  }
}

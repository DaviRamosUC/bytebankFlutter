import 'package:bytebank_2/components/saldo.dart';
import 'package:flutter/material.dart';

class DashboardSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Saldo(),
      ),
    );
  }
}

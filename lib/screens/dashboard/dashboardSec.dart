import 'package:bytebank_2/screens/dashboard/saldoCard.dart';
import 'package:bytebank_2/screens/deposito/formulario.dart';
import 'package:flutter/material.dart';

class DashboardSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bytebank'),
        ),
        body: ListView(children: [
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            child: ElevatedButton(
              child: Text('Receber depósito'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormularioDeposito();
                }));
              },
            ),
          )
        ]));
  }
}

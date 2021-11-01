import 'package:bytebank_2/models/saldo.dart';
import 'package:bytebank_2/screens/dashboard/saldoCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Consumer<Saldo>(
              builder: (context, saldo, child) {
                return ElevatedButton(
                  child: Text('Adicionar'),
                  onPressed: () {
                    saldo.adiciona(11.0);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Consumer<Saldo>(
              builder: (context, saldo, child) {
                return ElevatedButton(
                  child: Text('Subtrair'),
                  onPressed: () {
                    saldo.subtrai(11.0);
                  },
                );
              },
            ),
          )
        ]));
  }
}

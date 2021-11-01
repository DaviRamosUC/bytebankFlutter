import 'package:bytebank_2/screens/contato/contacts_list.dart';
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
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Receber depósito'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormularioDeposito();
                  }));
                },
              ),
              ElevatedButton(
                child: Text('Nova Transferência'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ContactsList();
                  }));
                },
              ),
            ],
          ),
        ]));
  }
}

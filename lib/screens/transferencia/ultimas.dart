import 'package:bytebank_2/models/transferencias.dart';
import 'package:bytebank_2/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _titulo = 'Últimas transferências';

class UltimasTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Consumer<Transferencias>(builder: (context, transferencias, child) {
          final _ultimasTransferencias =
              transferencias.transferencias.reversed.toList();
          final _quantidade = transferencias.transferencias.length;
          if (_quantidade == 0) return SemTransferenciaCadastrada();
          final regex = (_quantidade > 2) ? 2 : _quantidade;
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: regex,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ItemTransferencia(_ultimasTransferencias[index]);
            },
          );
        }),
        ElevatedButton(
          child: Text('Ver todas as transferencias'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListaTransferencias();
            }));
          },
        ),
      ],
    );
  }
}

class SemTransferenciaCadastrada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Você ainda não cadastrou nenhuma transferência',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

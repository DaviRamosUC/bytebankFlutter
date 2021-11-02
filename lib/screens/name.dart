import 'package:bytebank_2/components/container.dart';
import 'package:bytebank_2/models/name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameContainer extends BlocContainer {
  @override
  Widget build(BuildContext context) {
    return NameView();
  }
}

class NameView extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Como não é necessário fazer um rebuild da tela então
    //não é necessário chamar o BlocBuilder, sendo assim usa-se a abordagem mais limpa do Bloc
    _nameController.text = context.read<NameCubit>().state;
    // final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Change name"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: "Desired name:"),
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                child: Text("Change"),
                onPressed: () {
                  final name = _nameController.text;
                  context.read<NameCubit>().change(name);
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

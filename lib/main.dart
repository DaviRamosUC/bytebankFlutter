import 'package:bytebank_2/screens/name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/theme.dart';

void main() {
  runApp(Bytebank());
}

class LogObserver extends BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    print("${bloc.runtimeType} > $change");
    super.onChange(bloc, change);
  }
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Bloc.observer = LogObserver();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: bytebankTheme,
      home: NameContainer(),
    );
  }
}

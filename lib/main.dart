import 'dart:async';

import 'package:bytebank_2/screens/dashboardSec.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';

void main() async {
  //Inicio da zona guardada de erro para o crashlytics
  runZonedGuarded<Future<void>>(() async {
    //Inicio da integração com o crashlytics
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    if (kDebugMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    } else {
      //Criando identificado do usuário para o erro;
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
      FirebaseCrashlytics.instance.setUserIdentifier('alura123');
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    }
    //Fim da integração com o crashlytics
    runApp(Bytebank());
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
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
      home: DashboardSec(),
    );
  }
}

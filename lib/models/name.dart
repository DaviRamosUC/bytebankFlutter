import 'package:flutter_bloc/flutter_bloc.dart';

// O estado é um unico String
class NameCubit extends Cubit<String> {
  NameCubit(String name) : super(name);

  void change(String name) => emit(name);
}
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/shared/states.dart';

class CubitFile extends Cubit<CubitStates> {
  CubitFile() : super(InitialStates());
  static CubitFile get(context) => BlocProvider.of(context);
  bool Name = false;
  bool Age = false;
  bool Dep = false;
  String name = 'Ahmed';
  int age = 21;
  String department = 'Cs';
  void nameRe() {
    Name = true;
    emit(PrintName('$name'));
  }

  void ageRe() {
    Age = true;
    emit(PrintAge('$age'));
  }

  void depRe() {
    Dep = true;
    emit(PrintDep('$department'));
  }
}

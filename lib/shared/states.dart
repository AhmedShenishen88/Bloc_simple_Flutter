abstract class CubitStates {}

class InitialStates extends CubitStates {}

class PrintName extends CubitStates {
  final name;
  PrintName(this.name);
}

class PrintAge extends CubitStates {
  final age;
  PrintAge(this.age);
}

class PrintDep extends CubitStates {
  final dep;
  PrintDep(this.dep);
}

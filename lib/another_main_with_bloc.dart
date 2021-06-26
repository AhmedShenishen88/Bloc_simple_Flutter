import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/shared/bloc.dart';
import 'package:task/shared/observe.dart';
import 'package:task/shared/states.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MaterialApp(
    home: task(),
  ));
}

class task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitFile(),
      child: BlocConsumer<CubitFile, CubitStates>(
        listener: (context, states) {
          if (states is PrintName) {
            print('the screen is PrintName ${states.name}');
          }
          if (states is PrintAge) {
            print('the screen is PrintAge ${states.age}');
          }
          if (states is PrintDep) {
            print('the screen is PrintDep ${states.dep}');
          }
        },
        builder: (context, states) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Practical'),
              backgroundColor: Colors.green,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black87,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 10),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('images/math.png'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Name:',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                      Text(
                        CubitFile.get(context).name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Age:',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                      Text(
                        CubitFile.get(context).age.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Dep:',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                      Text(
                        CubitFile.get(context).department,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        color: Colors.blue,
                        child: Text(
                          'Name',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          CubitFile.get(context).nameRe();
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: FlatButton(
                          color: Colors.blue,
                          child: Text(
                            'Age',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onPressed: () {
                            CubitFile.get(context).ageRe();
                          },
                        ),
                      ),
                      FlatButton(
                        color: Colors.blue,
                        child: Text(
                          'Dep',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          CubitFile.get(context).depRe();
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                          quarterTurns: 3,
                          child: CubitFile.get(context).Name == false
                              ? Text('')
                              : Text(
                                  CubitFile.get(context).name,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green),
                                )),
                      Padding(
                        padding: EdgeInsets.only(left: 60, right: 60),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: CubitFile.get(context).Age == false
                              ? Text('')
                              : Text(CubitFile.get(context).age.toString(),
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green)),
                        ),
                      ),
                      RotatedBox(
                          quarterTurns: 3,
                          child: CubitFile.get(context).Dep == false
                              ? Text('')
                              : Text(
                                  CubitFile.get(context).department,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green),
                                )),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

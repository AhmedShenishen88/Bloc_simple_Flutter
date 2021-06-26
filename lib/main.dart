import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/shared/bloc.dart';
import 'package:task/shared/states.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Task(),
  ));
}

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  String name = 'Ahmed';
  int age = 21;
  String department = 'CS';
  bool Name = false;
  bool Age = false;
  bool Dep = false;

  @override
  Widget build(BuildContext context) {
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
                  '  $name',
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
                  '  $age',
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
                  '  $department',
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
                    setState(() {
                      Name = true;
                    });
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
                      setState(() {
                        Age = true;
                      });
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
                    setState(() {
                      Dep = true;
                    });
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
                    child: Name == false
                        ? Text('')
                        : Text(
                            name
                            // '$name'
                            ,
                            style: TextStyle(fontSize: 18, color: Colors.green),
                          )),
                Padding(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Age == false
                        ? Text('')
                        : Text(' $age  ',
                            style:
                                TextStyle(fontSize: 18, color: Colors.green)),
                  ),
                ),
                RotatedBox(
                    quarterTurns: 3,
                    child: Dep == false
                        ? Text('')
                        : Text(
                            '  $department',
                            style: TextStyle(fontSize: 18, color: Colors.green),
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
  }
}

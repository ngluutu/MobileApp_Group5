import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'form.dart';
import 'formList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String id = '';
  String school = 'UET';
  bool graduate = false;

  //FormText _form = FormText('', '', true);
  List<FormText> _formList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Đăng kí tham dự giải chạy 2000m VNU.",
      home: Scaffold(
        //key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Đăng kí tham dự giải chạy 2000m VNU."),
        ),
        body: SafeArea(
          //minimum: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Mã sinh viên'),
                onChanged: (text) {
                  setState(() {
                    id = text;
                  });
                },
              ),
              Row(
                children: [
                  Text('Trường: '),
                  DropdownButton<String>(
                    hint: Text('Select school'),
                    value: school,
                    items: <String>[
                      'UET',
                      'HUS',
                      'USSH',
                      'UEB',
                      'ULIS',
                      'EDUCATION',
                      'LAW',
                      'SMP',
                      'IS'
                    ].map((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (text) {
                      setState(() {
                        school = text!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Đã tốt nghiệp: '),
                  Checkbox(
                    value: graduate,
                    onChanged: (value) {
                      setState(() {
                        graduate = value!;
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
              ButtonTheme(
                height: 50,
                child: ElevatedButton(
                  child: Text(
                    'Xác nhận',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    setState(() {
                      _formList.add(FormText(
                          id, school, (graduate == true ? 'Rồi' : 'Chưa')));
                      id = '';
                      school = 'UET';
                      graduate = false;
                    });
                  },
                ),
              ),
              FormList(_formList)
            ],
          )),
        ),
      ),
    );
  }
}

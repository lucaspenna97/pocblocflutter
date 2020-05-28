import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocbloc/bloc/bloc.dart';
import 'package:pocbloc/widgets/myhomepage.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        builder: (BuildContext context) => BusinessLogicComponent(),
        child: MyHomePage(),
      ),
    );
  }
}

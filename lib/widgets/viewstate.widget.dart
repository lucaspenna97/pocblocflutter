import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocbloc/bloc/bloc.dart';
import 'package:pocbloc/bloc/states.dart';
import 'package:pocbloc/bloc/states.dart' as prefix0;

class ViewState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0, left: 30.0, top: 30.0),
      child: BlocBuilder<BusinessLogicComponent, States>(
        bloc: BlocProvider.of<BusinessLogicComponent>(context),
        builder: (BuildContext context, States state) {
          if (state is StateSuccess) {
            print('Retorno do objeto/estado: ${state.text} e ${state.number}');
            return showState(Colors.green, "State Success");
          } else if (state is StateWarning) {
            print('Retorno do objeto/estado: ${state.text} e ${state.number}');
            return showState(Colors.orange, "State Warning");
          } else if (state is prefix0.StateException) {
            print('Retorno do objeto/estado: ${state.text} e ${state.number}');
            return showState(Colors.red, "State Error");
          } else if (state is StateLoading) {
            print('Retorno do objeto/estado: ${state.text} e ${state.number}');
            return showState(Colors.blueGrey, "State Loading");
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget showState(Color color, String text) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

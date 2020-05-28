import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocbloc/bloc/events.dart';
import 'package:pocbloc/bloc/states.dart';

class BusinessLogicComponent extends Bloc<Events, States> {
  @override
  States get initialState => InitialState();

  @override
  Stream<States> mapEventToState(Events event) async* {
    try {
      if (event is EventSuccess) {
        yield StateSuccess(text: "Estado de sucesso :)", number: 10);
      } else if (event is EventWarning) {
        yield StateWarning(text: "Estado de atenção/perigo :x", number: 20);
      } else if (event is EventException) {
        yield StateException(text: "Deu ruim essa porcaria :(", number: 30);
      } else if (event is EventLoading) {
        yield StateLoading(text: "Esperando...", number: 40);
      }
    } catch (exception) {
      print('Ops, deu ruim em alguma coisa: ' + exception.toString());
      yield StateException();
    }
  }

  calledEventSuccess(BuildContext context) {
    BlocProvider.of<BusinessLogicComponent>(context).add(EventSuccess());
  }

  calledEventWarning(BuildContext context) {
    BlocProvider.of<BusinessLogicComponent>(context).add(EventWarning());
  }

  calledEventException(BuildContext context) {
    BlocProvider.of<BusinessLogicComponent>(context).add(EventException());
  }

  calledEventLoading(BuildContext context) {
    BlocProvider.of<BusinessLogicComponent>(context).add(EventLoading());
  }
}

import 'package:equatable/equatable.dart';

class States extends Equatable {
  @override
  List<Object> get props => null;
}

class InitialState extends States {}

class StateSuccess extends States {
  final String text;
  final int number;

  StateSuccess({this.text, this.number});
}

class StateWarning extends States {
  final String text;
  final int number;

  StateWarning({this.text, this.number});
}

class StateException extends States {
  final String text;
  final int number;

  StateException({this.text, this.number});
}

class StateLoading extends States {
  final String text;
  final int number;

  StateLoading({this.text, this.number});
}

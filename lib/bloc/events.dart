import 'package:equatable/equatable.dart';

class Events extends Equatable {
  @override
  List<Object> get props => null;
}

class EventSuccess extends Events {}

class EventWarning extends Events {}

class EventException extends Events {}

class EventLoading extends Events {}

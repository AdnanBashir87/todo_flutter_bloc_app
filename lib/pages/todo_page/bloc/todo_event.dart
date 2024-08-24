import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {}

class AddTask extends TodoEvent {
  @override
  List<Object?> get props => [];
}

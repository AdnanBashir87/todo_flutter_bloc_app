import 'package:equatable/equatable.dart';

abstract class TodoState extends Equatable {}

class Loading extends TodoState {
  @override
  List<Object?> get props => [];
}

import 'dart:async';

import 'package:todo_flutter_bloc_app/pages/todo_page/bloc/todo_event.dart';
import 'package:todo_flutter_bloc_app/pages/todo_page/bloc/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(Loading()) {
    on<AddTask>(_onAddTask);
  }

  void _onAddTask(AddTask event, Emitter<TodoState> emit) {}
}

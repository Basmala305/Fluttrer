import 'package:assignment1/Models/ToDoModel.dart';
import 'package:flutter/material.dart';

class ToDo_Provider extends ChangeNotifier {
  List<TODoModel> _todo = [
    TODoModel(
      title: "Study",
    ),
    TODoModel(
      title: "tranning",
    ),
    TODoModel(
      title: "Do my assignment",
    ),
  ];

  List<TODoModel> get todo => _todo;
  void addList(TODoModel todo) {
    _todo.add(todo);
    notifyListeners();
  }

  void chk(int index) {
    _todo[index].checkbox = !_todo[index].checkbox;

    notifyListeners();
  }

  void deleteList(int index) {
    _todo.removeAt(index);
    notifyListeners();
  }

  void updateList(int index, TODoModel todo) {
    _todo[index] = todo;
    notifyListeners();
  }

  List<TODoModel> searchList(String query) {
    return _todo
        .where((element) =>
            element.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}

import 'package:assignment1/Models/ToDoModel.dart';
import 'package:assignment1/Providers/ToDo_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class searchList extends SearchDelegate {
  Widget buildSearchBar(BuildContext context) {
    return TextField(
      onChanged: (value) {
        query = value;
      },
      decoration: InputDecoration(
        labelText: "Search",
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<TODoModel> todo =
        Provider.of<ToDo_Provider>(context).searchList(query);
    return ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todo[index].title),
          );
        });
  }
}

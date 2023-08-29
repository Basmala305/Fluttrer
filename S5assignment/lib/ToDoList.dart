import 'package:assignment1/Models/ToDoModel.dart';
import 'package:assignment1/Providers/ToDo_Provider.dart';
import 'package:assignment1/Widget/searchList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ToDo_Provider>(context);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            String title = "";

            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Adding"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            onChanged: (value) {
                              title = value;
                            },
                            decoration: InputDecoration(
                              labelText: "Enter title",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          child: Text("Add"),
                          onPressed: () {
                            provider.addList(TODoModel(title: title));
                            Navigator.pop(context);
                          },
                        ),
                        ElevatedButton(
                          child: Text("Cancel"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ));
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 159, 61, 176),
          title: Center(
            child: Text(
              "ToDo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: searchList());
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        body: Consumer<ToDo_Provider>(
          builder: (context, value, child) {
            return ListView.separated(
              itemCount: provider.todo.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(provider.todo[index]),
                  onDismissed: (direction) {
                    provider.deleteList(index);
                  },
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          String updatedTitle = provider.todo[index].title;

                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text("Editting"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          controller: TextEditingController(
                                              text: provider.todo[index].title),
                                          onChanged: (value) {
                                            updatedTitle = value;
                                          },
                                          decoration: InputDecoration(
                                            labelText: "Enter title",
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        child: Text("Save"),
                                        onPressed: () {
                                          provider.updateList(index,
                                              TODoModel(title: updatedTitle));

                                          Navigator.pop(context);
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Cancel"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ));
                        },
                        title: Container(
                          margin: EdgeInsetsDirectional.all(15),
                          height: 50,
                          width: 500,
                          color: Color.fromARGB(255, 241, 188, 239),
                          child: CheckboxListTile(
                            value: provider.todo[index].checkbox,
                            onChanged: (value) {
                              provider.chk(index);
                            },
                            title: Text(provider.todo[index].title),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(
                thickness: 5,
                color: Colors.white,
              ),
            );
          },
        ));
  }
}

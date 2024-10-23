import 'package:flutter/material.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Task Lits
  List todoLists = [
    ['Doing Code', false],
    ['Playing Game', false]
  ];

  //Checkbox was taped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoLists[index][1] = !todoLists[index][1];
    });
  }

  //add new task
  void createnewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          elevation: 0,
          title: Text(
            "TO DO",
          ),
          titleTextStyle: TextStyle(fontSize: 24, color: Colors.black87),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: Colors.blue.shade300,
          onPressed: createnewTask,
          child: Icon(
            Icons.add,
            color: Colors.white70,
          ),
        ),
        body: ListView.builder(
            itemCount: todoLists.length,
            itemBuilder: (context, index) {
              return TodoTile(
                  taskName: todoLists[index][0],
                  taskCompleted: todoLists[index][1],
                  onChanged: (value) => checkBoxChanged(value, index));
            }));
  }
}

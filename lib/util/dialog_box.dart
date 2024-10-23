// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onsave,
      required this.oncancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue.shade100,
      content: Container(
        //decoration: BoxDecoration(shape: BoxShape.rectangle),
        padding: const EdgeInsets.all(8),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              maxLength: 50,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                  counterStyle: const TextStyle(color: Colors.black87),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade300, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: Colors.white70, width: 2)),
                  hintText: "Add a New Task",
                  hintStyle:
                      TextStyle(fontSize: 16, color: Colors.grey.shade100)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(text: "Save", onPressed: onsave),

                const SizedBox(
                  width: 8,
                ),
                //cancel button
                MyButton(text: "Cancel", onPressed: oncancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

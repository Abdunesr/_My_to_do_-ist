import 'package:flutter/material.dart';
import 'package:what_to_do/constraint/colors.dart';
import 'package:what_to_do/model/todo.dart';

class TodoItem extends StatelessWidget {
   TodoItem({super.key,required this.todo});

  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(bottom: 20),
      child: ListTile(
        tileColor: Colors.white,
        onTap: () {
          print("the listile icon is clicked ");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        leading:  Icon(
         todo.isDone? Icons.check_box:Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title:  Text(
            todo.todoText,
          style:
            TextStyle(fontSize: 16, decoration: todo.isDone? TextDecoration.lineThrough:null),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              print("the delete icon is clicked ");
            },
            icon: const Icon(
              Icons.delete,
            ),
            iconSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

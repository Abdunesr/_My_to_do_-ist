import 'package:flutter/material.dart';
import 'package:what_to_do/model/todo.dart';
import 'package:what_to_do/constraint/colors.dart';
import 'package:what_to_do/widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final todolist = Todo.todoLists();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SearchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 20),
                        child: const Text(
                          "MY Tasks ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                      ),
                      for (Todo todoo in todolist) TodoItem(todo: todoo),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(
                        bottom: 20, top: 10, right: 10, left: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Add the Task YOU HAVE TO Acomplish',
                          border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("+",style: TextStyle(color: Colors.white,fontSize: 40),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tdBlue,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget SearchBox() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              size: 20,
              color: tdBlack,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 15),
            hintText: '  Search',
            border: InputBorder.none),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/abd.jpg',
                width: 45,
                height: 45,
              ),
            ),
          )
        ],
      ),
    );
  }
}

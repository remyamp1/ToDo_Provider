import 'package:flutter/material.dart';
class Todolist extends StatefulWidget{
  @override
  State<Todolist> createState()=> _TodolistState();
  }

class _TodolistState extends State<Todolist>{
@override
Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: 
    Text("ToDo with Provider"),

  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
        ),
SizedBox(height: 20),
        ElevatedButton(onPressed: (){}, child: Text("Add",style: TextStyle(fontSize: 15)),)
      ],
    ),
  ),
);
}
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/todo_provider.dart';
class Todolist extends StatefulWidget{
  @override
  State<Todolist> createState()=> _TodolistState();
  }

class _TodolistState extends State<Todolist>{
@override
Widget build(BuildContext context){
  final todo=Provider.of<todoprovider>(context);
return Scaffold(
  appBar: AppBar(
    title: 
    Text("ToDo with Provider",style: TextStyle(color:Colors.green),),

  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: todo.controller,
            decoration: InputDecoration(border: OutlineInputBorder()),),
        ),
SizedBox(height: 20),
        ElevatedButton(onPressed:(){
          todo.Changelist();
         } , child: Text("Add",style: TextStyle(fontSize: 15)),),
         Expanded(child:
          ListView.builder(itemCount: todo.item.length,
            itemBuilder:(context,index){
return ListTile(
  title: Text(todo.item[index]),
  trailing: IconButton(onPressed: (){
   todo. remove(index);
  }, icon: Icon(Icons.delete)),
);
          }))
      ],
    ),
  ),
  
);
}
}
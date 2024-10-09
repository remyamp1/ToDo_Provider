import 'package:flutter/material.dart';

class todoprovider extends ChangeNotifier{
 TextEditingController _controller=TextEditingController();
  TextEditingController  get controller=>_controller; 
 List <String> _item=[];
  List <String> get item=>_item;




  void Changelist(){
     if (_controller.text.isNotEmpty){
    _item.add(_controller.text);
    _controller.clear();
     }
    notifyListeners();
      

  }
void remove( int index){
   _item.removeAt(index);
notifyListeners();
}

}
import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {

 int selectedIndex=3;

 void setIndex(int index){
  selectedIndex=index;
  isNext=false;
  issubmit=false;
  notifyListeners();
 }
bool isNext=false;

 void setNext(bool next){
isNext=next;
notifyListeners();
 }

 bool issubmit=false;

 void setsubmit(bool submit){
issubmit=submit;
notifyListeners();
 }
  
}
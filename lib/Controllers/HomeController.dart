import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  double width;
  bool openedMenu;
  bool isEditMode;

  void init() {
    width = 0;
    openedMenu = false;
    isEditMode = false;
  }

  void changeMenuBool(){
    print("change menu bool");
    if(openedMenu){
      width = 0;
      openedMenu = false;
    }else{
      width = 150;
      openedMenu = true;
    }

    notifyListeners();
  }

}
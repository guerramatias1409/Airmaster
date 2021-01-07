import 'package:airmaster/Controllers/HomeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomeLeadingController extends ChangeNotifier {
  HomeController homeController;

  void init(BuildContext _context){
    homeController = Provider.of<HomeController>(_context, listen: false);
  }

  void changeEditMode() {
    if(homeController.isEditMode){
      homeController.isEditMode = false;
    }else{
      homeController.isEditMode = true;
    }
    notifyListeners();
  }
}
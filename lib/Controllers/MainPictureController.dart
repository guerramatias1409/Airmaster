import 'package:airmaster/Controllers/HomeController.dart';
import 'package:airmaster/Views/ChangeImage/ChangeImageBase.dart';
import 'package:airmaster/Widgets/EditTextPopUp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPictureController extends ChangeNotifier {
  HomeController homeController;
  DocumentSnapshot item;
  DocumentReference reference = FirebaseFirestore.instance.collection("MainPicture").doc("MainPicture");

  void init(BuildContext _context) {
    homeController = Provider.of<HomeController>(_context, listen: false);
    getItem();
  }

  void getItem() async{
    var document = await reference.get();
    item = document;
    notifyListeners();
  }

  void openEditPopUp(String field, BuildContext _context) {
    showDialog(
        context: _context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(bottom: 10),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: Container(
                height: 200,
                width: 300,
                child: Center(child: EditTextPopUp(reference, field))),
          );
        });
  }

  void openChangeImagePopUp(BuildContext _context) {
    showDialog(
        context: _context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(bottom: 10),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: Container(
                width: 500,
                child: ChangeImageBase(storageReference: "Home/MainPicture/Added",documentReference: reference)),
          );
        });
  }

  void notify() {
    getItem();
    notifyListeners();
  }


}
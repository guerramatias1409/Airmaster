import 'package:airmaster/Controllers/HomeController.dart';
import 'package:airmaster/Views/ChangeImage/ChangeImageBase.dart';
import 'package:airmaster/Widgets/EditTextPopUp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatefulWidget {
  String image;
  String route;
  bool isMobile;
  DocumentReference documentReference;

  CategoryItem({this.image, this.route, this.isMobile = false, this.documentReference});

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  double imageSide;
  HomeController homeController;
  DocumentSnapshot item;


  @override
  void initState() {
    homeController = Provider.of<HomeController>(context, listen: false);
    getItem();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    imageSide = MediaQuery.of(context).size.width/5;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return item == null
        ? Container()
    : InkWell(
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: (){
        // if(widget.route != null){
        //   Navigator.pushNamed(context, widget.route);
        // }
      },
      child: Container(
        width: imageSide,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                if(homeController.isEditMode){
                  openEditPopUp("Title");
                }
              },
              child: Text(
                item.data()["Title"],
                style: TextStyle(fontSize: widget.isMobile ? 15 : 28),
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: (){
                if(homeController.isEditMode){
                  openChangeImagePopUp();
                }
              },
              child: Container(
                  height: imageSide,
                  width: imageSide,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(item.data()["ImageUrl"])))),
            ),
            SizedBox(height: 5),
            GestureDetector(
                onTap: (){
                  if(homeController.isEditMode){
                    openEditPopUp("Comment");
                  }
                },
              child: Text(
                  item.data()["Comment"],
                  style: TextStyle(
                    fontSize:  widget.isMobile ? 12 : 20,
                    fontWeight: FontWeight.w400
                  ),
                  maxLines: widget.isMobile ? 3 : 1),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 300),
              child: GestureDetector(
                  onTap: (){
                    if(homeController.isEditMode){
                      openEditPopUp("Subcomment");
                    }
                  },
                child: Text(
                    item.data()["Subcomment"],
                    style: TextStyle(
                      fontSize:  widget.isMobile ? 10 : 18,
                      height: 1
                    ),
                    maxLines: widget.isMobile ? 4 : 2),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openEditPopUp(String field) async{
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(bottom: 10),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: Container(
              height: 200,
                width: 300,
                child: Center(child: EditTextPopUp(widget.documentReference, field))),
          );
        });
    getItem();
  }


  void openChangeImagePopUp() async{
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(bottom: 10),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: Container(
                width: 500,
                child: ChangeImageBase(storageReference: "Home/Categories/Added",documentReference: widget.documentReference)),
          );
        });
    getItem();
  }

  void getItem() async{
    print("get item");
    var document = await widget.documentReference.get();
    setState(() {
      item = document;
    });
  }


}

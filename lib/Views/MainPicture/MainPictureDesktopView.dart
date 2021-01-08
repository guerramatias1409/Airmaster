import 'package:airmaster/Widgets/SquaredButton.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/MainPictureController.dart';
import 'package:airmaster/responsive/view.dart';

class MainPictureDesktopView extends View<MainPictureController>{
  @override
  Widget build(BuildContext context,MainPictureController controller) {
    return controller.item == null
        ? Container()
    : Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        GestureDetector(
          onTap: (){
            if(controller.homeController.isEditMode){
              controller.openChangeImagePopUp(context);
            }
          },
          child: Container(
              height: 830,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(controller.item.data()["ImageUrl"])))
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      if(controller.homeController.isEditMode){
                        controller.openEditPopUp("Title1", context);
                      }
                    },
                    child: Text(
                      controller.item.data()["Title1"],
                      style: TextStyle(
                        fontSize: 54,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      if(controller.homeController.isEditMode){
                        controller.openEditPopUp("Title2", context);
                      }
                    },
                    child: Text(
                      controller.item.data()["Title2"],
                      style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 350),
                child: GestureDetector(
                  onTap: (){
                    if(controller.homeController.isEditMode){
                      controller.openEditPopUp("Subtitle", context);
                    }
                  },
                  child: Text(
                    controller.item.data()["Subtitle"],
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        height: 1
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              SquaredButton(text: controller.item.data()["ButtonText"])
            ],
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/ChangeImageController.dart';
import 'package:airmaster/responsive/view.dart';

class ChangeImageMobileView extends View<ChangeImageController>{
  @override
  Widget build(BuildContext context,ChangeImageController controller) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: 510,
                child: Text(
                  "EDIT IMAGE",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            children: [
              controller.selectedImage == null
                  ? Container(
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)),
                child: FloatingActionButton.extended(
                  heroTag: 'uploadPhotoWeb',
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10))),
                  backgroundColor: Colors.blueAccent,
                  elevation: 4.0,
                  highlightElevation: 1,
                  icon: Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 20,
                  ),
                  label: Text(
                    "SELECT IMAGE",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    controller.getImage();
                  },
                ),
              )

                  : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: 200, maxHeight: 150),
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: MemoryImage(
                                  controller.selectedImage),
                            )),
                        child: Center(
                          child: FloatingActionButton(
                            heroTag: 'deleteImage',
                            backgroundColor:
                            Colors.white.withOpacity(0.75),
                            elevation: 4.0,
                            highlightElevation: 1,
                            child: Icon(
                              Icons.delete,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {
                              controller.quitImage();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)),
                    child: FloatingActionButton.extended(
                      heroTag: 'sendImage',
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10))),
                      backgroundColor: Colors.blueAccent,
                      elevation: 4.0,
                      highlightElevation: 1,
                      icon: Icon(
                        Icons.image,
                        color: Colors.white,
                        size: 20,
                      ),
                      label: Text(
                        "Send Image",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        controller.sendImageWeb(context);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
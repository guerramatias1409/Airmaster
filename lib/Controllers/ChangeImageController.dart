import 'package:airmaster/Controllers/HomeCategoriesController.dart';
import 'package:airmaster/Controllers/MainPictureController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:mime_type/mime_type.dart';
import 'package:firebase/firebase.dart' as fb;
import 'package:path/path.dart' as path;
import 'dart:typed_data';

import 'package:platform_alert_dialog/platform_alert_dialog.dart';
import 'package:provider/provider.dart';

class ChangeImageController extends ChangeNotifier {
  Uint8List selectedImage;
  MediaInfo mediaInfo;
  String locationReference;
  DocumentReference documentReference;
  MainPictureController mainPictureController;
  HomeCategoriesController homeCategoriesController;
  String mainPictureUrl =
      "https://firebasestorage.googleapis.com/v0/b/airmaster-e2ded.appspot.com/o/Home%2FMainPicture%2Fmainpicture.jpg?alt=media&token=77d2a6b1-1a44-483a-ad2b-7790bd2e125d";
  String categoryWindowUrl =
      "https://firebasestorage.googleapis.com/v0/b/airmaster-e2ded.appspot.com/o/Home%2FCategories%2FCategoryWindows.jpg?alt=media&token=2e008a2c-7a76-4913-98d4-4c62d62ce233";
  String categoryDoorUrl =
      "https://firebasestorage.googleapis.com/v0/b/airmaster-e2ded.appspot.com/o/Home%2FCategories%2FCategoryDoors.jpg?alt=media&token=273842b7-ced3-478e-bdf4-46d304a4ee09";
  String categoryRailingUrl =
      "https://firebasestorage.googleapis.com/v0/b/airmaster-e2ded.appspot.com/o/Home%2FCategories%2FCategoryRailings.jpg?alt=media&token=09929b0b-d2b5-4110-9e7a-43015ad81f2d";
  String categoryShowerUrl =
      "https://firebasestorage.googleapis.com/v0/b/airmaster-e2ded.appspot.com/o/Home%2FCategories%2FCategoryShowers.jpg?alt=media&token=64769089-0fd4-4511-ac45-676287964ed6";

  void init(String _reference, DocumentReference _docRef, BuildContext _context) {
    selectedImage = null;
    locationReference = _reference;
    documentReference = _docRef;
    mainPictureController = Provider.of<MainPictureController>(_context, listen: false);
    homeCategoriesController = Provider.of<HomeCategoriesController>(_context, listen: false);
  }

  Future getImage() {
    return ImagePickerWeb.getImageInfo.then((MediaInfo _mediaInfo) {
      selectedImage = _mediaInfo.data;
      mediaInfo = _mediaInfo;
      notifyListeners();
    });
  }

  void quitImage() {
    selectedImage = null;
    notifyListeners();
  }

Future sendImageWeb(BuildContext _context) async {
    try {
      String mimeType = mime(path.basename(mediaInfo.fileName));
      var metaData = fb.UploadMetadata(contentType: mimeType);
      fb.StorageReference storageReference =
          fb.storage().ref(locationReference).child(mediaInfo.fileName);
      fb.UploadTask uploadTask = storageReference.put(mediaInfo.data, metaData);
      uploadTask.future.then((snapshot) => {
            snapshot.ref.getDownloadURL().then((downloadUrl) async {
              if (downloadUrl != null) {
                  var reference = documentReference;
                  await reference.update({"ImageUrl": downloadUrl.toString()});
                  Navigator.of(_context).pop();
                  mainPictureController.notify();
              } else {
                showDialogAlert('ERROR', 'PLEASE_TRY_AGAIN', _context);
              }
            }, onError: (err) {
              print(err);
            })
          });
    } catch (e) {
      print('File Upload Error: $e');
    }
  }

  void showDialogAlert(String title, String content, BuildContext _context) {
    showDialog<void>(
      context: _context,
      builder: (BuildContext context) {
        return PlatformAlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(content),
              ],
            ),
          ),
          actions: <Widget>[
            PlatformDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void selectImage(String imageUrl, BuildContext _context) async{
    var reference = documentReference;
    await reference.update({"ImageUrl": imageUrl.toString()});
    Navigator.of(_context).pop();
    mainPictureController.notify();
  }

}
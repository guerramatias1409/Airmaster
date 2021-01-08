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

  void init(String _reference, DocumentReference _docRef, BuildContext _context) {
    selectedImage = null;
    locationReference = _reference;
    documentReference = _docRef;
    mainPictureController = Provider.of<MainPictureController>(_context, listen: false);
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
                  print("EDIT PICTURE");
                  var reference = documentReference;
                  await reference.update({"ImageUrl": downloadUrl.toString()});
                  print("FINISH EDIT");
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

}
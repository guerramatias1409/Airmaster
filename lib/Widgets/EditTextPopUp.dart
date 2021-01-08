import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditTextPopUp extends StatefulWidget {
  DocumentReference documentReference;
  String field;

  EditTextPopUp(this.documentReference, this.field);

  @override
  _EditTextPopUpState createState() => _EditTextPopUpState();
}

class _EditTextPopUpState extends State<EditTextPopUp> {
  TextEditingController textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Wrap(
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
                    "EDIT TEXT",
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: textController,
                    maxLines: 1
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: FloatingActionButton.extended(
              heroTag: 'sendOffer',
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              backgroundColor: Colors.blueAccent,
              elevation: 4.0,
              highlightElevation: 1,
              icon: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
              label: Text(
               "EDIT",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                  editText();
              },
            ),
          )
        ],
      ),
    );
  }

  void editText() async{
    var reference = widget.documentReference;
    await reference.update({widget.field: textController.text});
    Navigator.of(context).pop();
  }
}

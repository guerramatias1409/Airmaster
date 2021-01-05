import 'package:airmaster/Controllers/HomeLeadingController.dart';
import 'package:airmaster/Responsive/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLeadingMobileView extends View<HomeLeadingController> {
  @override
  Widget build(BuildContext context, HomeLeadingController controller) {
    return Container(
      height: 30,
      color: Color(0xFF5C6061),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Puerto Rico",
              style: TextStyle(
                  color: Color(0xFF48A742),
                  fontSize: 10
              ),),
            VerticalDivider(
              endIndent: 10,
              indent: 10,
              width: 2,
              color: Colors.white,
            ),
            Text("Florida, US Market",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
              ),),
            VerticalDivider(
              endIndent: 10,
              indent: 10,
              width: 2,
              color: Colors.white,
            ),
            Text("Punta Cana, DR Market",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
              ),),
            SizedBox(width: 5),
            //TODO si dejo unicamente el boton, el separador de la derecha no se ve. Por que??
            Row(
              children: [
                Container(
                  width: 105,
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: FloatingActionButton.extended (
                    heroTag: 'whereToBuy' ,
                    shape: RoundedRectangleBorder (
                        borderRadius: BorderRadius.all (
                            Radius.circular ( 0 ) ) ) ,
                    backgroundColor:  Color(0xFF48A742) ,
                    icon: Icon ( Icons.location_on,size: 16,) ,
                    label: Text ("WHERE TO BUY" ,
                        style: TextStyle (
                            fontSize: 8 ,
                            color: Colors.white ,
                            fontWeight: FontWeight.bold ) ) ,
                    onPressed: () {
                    },
                  ),
                ),
                Container(width: 1,color: Colors.transparent)
              ],
            ),
            VerticalDivider(
              endIndent: 10,
              indent: 10,
              width: 2,
              color: Colors.white,
            ),
            Text("For Professionals",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
              ),),
            VerticalDivider(
              endIndent: 10,
              indent: 10,
              width: 2,
              color: Colors.white,
            ),
            Text("Support",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
              ),),
            VerticalDivider(
              endIndent: 10,
              indent: 10,
              width: 2,
              color: Colors.white,
            ),
            Text("Carrers",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
              ),),
            VerticalDivider(
              endIndent: 10,
              indent: 10,
              width: 2,
              color: Colors.white,
            ),
            Text("Certifications / Resources",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
              ),),
          ],
        ),
      ),
    );
  }
}
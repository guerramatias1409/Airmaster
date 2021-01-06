import 'package:airmaster/Controllers/HomeLeadingController.dart';
import 'package:airmaster/Responsive/view.dart';
import 'package:airmaster/Widgets/HomeLeadingDivider.dart';
import 'package:flutter/material.dart';

class HomeLeadingDesktopView extends View<HomeLeadingController> {
  @override
  Widget build(BuildContext context, HomeLeadingController controller) {
    return Container(
      height: 40,
      color: Color(0xFF5C6061),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Puerto Rico",
              style: TextStyle(
                  color: Color(0xFF48A742),
                  fontSize: 13
              ),),
            HomeLeadingDivider(),
            Text("Florida, US Market",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13
              ),),
            HomeLeadingDivider(),
            Text("Punta Cana, DR Market",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13
              ),),
            SizedBox(width: 10),
            //TODO si dejo unicamente el boton, el separador de la derecha no se ve. Por que??
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: RaisedButton (
                    padding: EdgeInsets.all(5),
                    color: Color(0xFF48A742),
                    shape: RoundedRectangleBorder (
                        borderRadius: BorderRadius.all (
                            Radius.circular ( 0 ) ) ) ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon (Icons.location_on,size: 16, color: Colors.white,),
                        SizedBox(width: 5),
                        Text ("WHERE TO BUY" ,
                            style: TextStyle (
                                fontSize: 10 ,
                                color: Colors.white ,
                                fontWeight: FontWeight.w100 ) )
                      ],
                    ),
                    onPressed: () {
                    },
                  ),
                ),
                Container(width: 1,color: Colors.transparent)
              ],
            ),
            HomeLeadingDivider(),
            Text("For Professionals",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13
              ),),
            HomeLeadingDivider(),
            Text("Support",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13
              ),),
            HomeLeadingDivider(),
            Text("Carrers",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13
              ),),
            HomeLeadingDivider(),
            Text("Certifications / Resources",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13
              ),),
          ],
        ),
      ),
    );
  }
}
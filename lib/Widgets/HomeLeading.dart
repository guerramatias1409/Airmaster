import 'package:airmaster/Widgets/HomeLeadingDivider.dart';
import 'package:flutter/material.dart';

class HomeLeading extends StatefulWidget {
  @override
  _HomeLeadingState createState() => _HomeLeadingState();
}

class _HomeLeadingState extends State<HomeLeading> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 35,
        color: Color(0xFF5C6061),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Puerto Rico",
                style: TextStyle(
                    color: Color(0xFF48A742),
                    fontSize: 12
                ),),
              HomeLeadingDivider(),
              Text("Florida, US Market",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                ),),
              HomeLeadingDivider(),
              Text("Punta Cana, DR Market",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                ),),
              HomeLeadingDivider(),
              //TODO si dejo unicamente el boton, el separador de la derecha no se ve. Por que??
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    width: 150,
                    child: FloatingActionButton.extended (
                      heroTag: 'whereToBuy' ,
                      shape: RoundedRectangleBorder (
                          borderRadius: BorderRadius.all (
                              Radius.circular ( 0 ) ) ) ,
                      backgroundColor:  Color(0xFF48A742) ,
                      icon: Icon ( Icons.location_on ) ,
                      label: Text ("WHERE TO BUY" ,
                          style: TextStyle (
                              fontSize: 12 ,
                              color: Colors.white ,
                              fontWeight: FontWeight.bold ) ) ,
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
                    fontSize: 12
                ),),
              HomeLeadingDivider(),
              Text("Couriers",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                ),),
              HomeLeadingDivider(),
              Text("Certifications / Resources",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12
              ),),
            ],
          ),
        ),
      ),
    );
  }
}

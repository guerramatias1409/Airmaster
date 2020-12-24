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
        color: Colors.black.withOpacity(0.7),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("No se ve",
                style: TextStyle(
                    color: Colors.green,
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: 150,
                child: FloatingActionButton.extended (
                  heroTag: 'whereToBuy' ,
                  shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.all (
                          Radius.circular ( 0 ) ) ) ,
                  backgroundColor:  Colors.green ,
                  highlightElevation: 1 ,
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

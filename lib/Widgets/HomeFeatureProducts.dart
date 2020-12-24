import 'package:flutter/material.dart';

class HomeFeatureProducts extends StatefulWidget {
  @override
  _HomeFeatureProductsState createState() => _HomeFeatureProductsState();
}

class _HomeFeatureProductsState extends State<HomeFeatureProducts> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 30,
                child: Center(
                  child: Text("FEATURE PRODUCTS",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            Container(height: 250,color: Colors.red),
            SizedBox(height: 15),
            Container(height: 250,color: Colors.blue)
          ],
        ),
      ),
    );
  }
}

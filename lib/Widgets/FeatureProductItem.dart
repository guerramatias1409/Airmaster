import 'package:airmaster/Widgets/SquaredButton.dart';
import 'package:flutter/material.dart';

class FeatureProductItem extends StatefulWidget {
  String title;
  String content;
  String image;

  FeatureProductItem({this.title, this.content, this.image});

  @override
  _FeatureProductItemState createState() => _FeatureProductItemState();
}

class _FeatureProductItemState extends State<FeatureProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 505,
      child: Row(
        children: [
          Flexible(
            flex: 9,
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.image)))
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              color: Color(0xFF5C6061),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,
                      style: TextStyle(
                          fontSize: 46,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 450),
                      child: Text(widget.content,
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          height: 1
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SquaredButton(text: "LEARN\nMORE",)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

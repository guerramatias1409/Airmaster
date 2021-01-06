import 'package:airmaster/Widgets/SquaredButton.dart';
import 'package:flutter/material.dart';

class FeatureProductItem extends StatefulWidget {
  String title;
  String content;
  String image;
  bool isMobile;

  FeatureProductItem({this.title, this.content, this.image, this.isMobile = false});

  @override
  _FeatureProductItemState createState() => _FeatureProductItemState();
}

class _FeatureProductItemState extends State<FeatureProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.isMobile ? 240 : 505,
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
                padding: EdgeInsets.only(left: widget.isMobile ? 20 : 48, top: 15, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,
                      style: TextStyle(
                          fontSize: widget.isMobile ? 18 : 46,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),),
                    SizedBox(
                      height: widget.isMobile ? 5 : 10,
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: widget.isMobile ? 150 : 450),
                      child: Text(widget.content,
                        style: TextStyle(
                            fontSize: widget.isMobile ? 12 : 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          height: 1
                        ),
                      ),
                    ),
                    SizedBox(
                      height: widget.isMobile ? 10 : 15,
                    ),
                    SquaredButton(text: "LEARN\nMORE", isMobile: widget.isMobile)
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

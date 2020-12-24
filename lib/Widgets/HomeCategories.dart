import 'package:airmaster/Widgets/CategoryItem.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatefulWidget {
  @override
  _HomeCategoriesState createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal:25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(title: "WINDOWS",
              color: Colors.red,
              comment: "Lorem ipsum dolor sit amet consectetur adipiscing elit, diam placerat mollis taciti per lectus pellentesque, suspendisse commodo pharetra augue conubia aenean. Taciti nisl phasellus habitasse hac vehicula nam ac luctus, convallis iaculis lobortis nibh magna ligula accumsan, per libero egestas lacus diam litora varius."
            ),
            CategoryItem(title: "DOORS",
                color: Colors.blue,
                comment: "Lorem ipsum dolor sit amet consectetur adipiscing elit, diam placerat mollis taciti per lectus pellentesque, suspendisse commodo pharetra augue conubia aenean. Taciti nisl phasellus habitasse hac vehicula nam ac luctus, convallis iaculis lobortis nibh magna ligula accumsan, per libero egestas lacus diam litora varius."
            ),
            CategoryItem(title: "RAILINGS",
                color: Colors.green,
                comment: "Lorem ipsum dolor sit amet consectetur adipiscing elit, diam placerat mollis taciti per lectus pellentesque, suspendisse commodo pharetra augue conubia aenean. Taciti nisl phasellus habitasse hac vehicula nam ac luctus, convallis iaculis lobortis nibh magna ligula accumsan, per libero egestas lacus diam litora varius."
            ),
            CategoryItem(title: "SHOWERS",
                color: Colors.yellow,
                comment: "Lorem ipsum dolor sit amet consectetur adipiscing elit, diam placerat mollis taciti per lectus pellentesque, suspendisse commodo pharetra augue conubia aenean. Taciti nisl phasellus habitasse hac vehicula nam ac luctus, convallis iaculis lobortis nibh magna ligula accumsan, per libero egestas lacus diam litora varius."
            )

          ],
        ),
      ),
    );
  }
}

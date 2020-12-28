import 'package:airmaster/Widgets/CategoryItem.dart';
import 'package:flutter/material.dart';

class DoorsCategories extends StatefulWidget {
  @override
  _DoorsCategoriesState createState() => _DoorsCategoriesState();
}

class _DoorsCategoriesState extends State<DoorsCategories> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal:25),
        child: Container(
          constraints: BoxConstraints(maxWidth: 1050),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryItem(title: "ENTRANCE DOORS",
                    image: 'assets/Doors/entrance.jpg',
                    comment: "HIGH PERFORMANCE WINDOWS",
                    subcomment: "Impact and Hurricane Resistance Certification",
                  ),
                  CategoryItem(title: "MULTI-FOLD",
                      image: 'assets/Doors/multifold.jpg',
                      comment: "HIGH PERFORMANCE WINDOWS",
                      subcomment: "Impact and Hurricane Resistance Certification"
                  ),
                  CategoryItem(title: "SLIDING",
                      image: 'assets/Doors/sliding.jpg',
                      comment: "HIGH PERFORMANCE WINDOWS",
                      subcomment: "Impact and Hurricane Resistance Certification"
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryItem(title: "PIVOT",
                    image: 'assets/Doors/pivot.jpg',
                    comment: "HIGH PERFORMANCE WINDOWS",
                    subcomment: "Impact and Hurricane Resistance Certification",
                  ),
                  CategoryItem(title: "INTERIOR DOORS",
                      image: 'assets/Doors/interior.jpg',
                      comment: "HIGH PERFORMANCE WINDOWS",
                      subcomment: "Impact and Hurricane Resistance Certification"
                  ),
                  CategoryItem(title: "SWING OUT",
                      image: 'assets/Doors/swingout.jpg',
                      comment: "HIGH PERFORMANCE WINDOWS",
                      subcomment: "Impact and Hurricane Resistance Certification"
                  ),
                ],
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryItem(title: "DESIGNER DOORS",
                        image: 'assets/Doors/designer.jpg',
                        comment: "HIGH PERFORMANCE WINDOWS",
                        subcomment: "Impact and Hurricane Resistance Certification",
                      ),
                      Container(
                        width: 570,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 2
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AIR MASTER DOORS",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5C6061)
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Air Master is the only manufacturer in Puerto Rico that has obtained the certification of the Miami-Dade County against impact and air infiltration. The state of Florida has a strict building code that requires all exterior windows and doors to meet certain criteria. These architectural elements have to be designed to protect a building during a hurricane where winds are often sustained at more than 100 mph with gusts over 175 mph.",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF5C6061)
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                "* The glass that we use in our products with de impact resistance certification is a laminate that forms a 'sandwich' of two sheets of glass, available in different degrees of thickness, much like the material on car windshields or airplane windows. 5/16' laminated / tempered glass could break with severe impact, but will not allow projectiles or water to enter the glass.",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF5C6061)
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "* Products must be installed according to the manufacturer's specifications to ensure performance during the passage of a storm or hurricane",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF5C6061)
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "* Products with impact and hurricane resistance certification must follow the recommended sizes.",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF5C6061)
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "* The products must be in optimal conditions. The customer is responsible for notifying any maintenance issue once their product is installed.",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF5C6061)
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

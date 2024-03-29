import 'package:airmaster/Widgets/GalleryItem.dart';
import 'package:flutter/material.dart';

class HomeGallery extends StatefulWidget {
  @override
  _HomeGalleryState createState() => _HomeGalleryState();
}

class _HomeGalleryState extends State<HomeGallery> {
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
                  child: Text(
                    "GALLERY",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 50),
              child: GridView.count(
                shrinkWrap: true,
                mainAxisSpacing: 40,
                crossAxisSpacing: 40,
                crossAxisCount: 3,
                childAspectRatio: 1.8,
                children: [
                  GalleryItem(image: 'assets/Home/gallery1.jpg'),
                  GalleryItem(image: 'assets/Home/gallery2.jpg'),
                  GalleryItem(image: 'assets/Home/gallery3.jpg'),
                  GalleryItem(image: 'assets/Home/gallery4.jpg'),
                  GalleryItem(image: 'assets/Home/gallery5.jpg'),
                  GalleryItem(image: 'assets/Home/gallery6.jpg'),
                  GalleryItem(image: 'assets/Home/gallery7.jpg'),
                  GalleryItem(image: 'assets/Home/gallery8.jpg'),
                  GalleryItem(image: 'assets/Home/gallery9.jpg'),
                  GalleryItem(image: 'assets/Home/gallery10.jpg'),
                  GalleryItem(image: 'assets/Home/gallery11.jpg'),
                  GalleryItem(image: 'assets/Home/gallery12.jpg'),
                  GalleryItem(image: 'assets/Home/gallery13.jpg'),
                  GalleryItem(image: 'assets/Home/gallery14.jpg'),
                  GalleryItem(image: 'assets/Home/gallery15.jpg'),
                  GalleryItem(image: 'assets/Home/gallery16.jpg'),
                  GalleryItem(image: 'assets/Home/gallery17.jpg'),
                  GalleryItem(image: 'assets/Home/gallery18.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:airmaster/Widgets/GalleryItem.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeGalleryController.dart';
import 'package:airmaster/responsive/view.dart';


class HomeGalleryDesktopView extends View<HomeGalleryController>{
  @override
  Widget build(BuildContext context,HomeGalleryController controller) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 130,
              child: Center(
                child: Text(
                  "GALLERY",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120, right: 120, bottom: 120),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery1.jpg'),
                      GalleryItem(image: 'assets/Home/gallery2.jpg'),
                      GalleryItem(image: 'assets/Home/gallery3.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 55),
                Container(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery4.jpg'),
                      GalleryItem(image: 'assets/Home/gallery5.jpg'),
                      GalleryItem(image: 'assets/Home/gallery6.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 55),
                Container(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery7.jpg'),
                      GalleryItem(image: 'assets/Home/gallery8.jpg'),
                      GalleryItem(image: 'assets/Home/gallery9.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 55),
                Container(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery10.jpg'),
                      GalleryItem(image: 'assets/Home/gallery11.jpg'),
                      GalleryItem(image: 'assets/Home/gallery12.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 55),
                Container(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery13.jpg'),
                      GalleryItem(image: 'assets/Home/gallery14.jpg'),
                      GalleryItem(image: 'assets/Home/gallery15.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 55),
                Container(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery16.jpg'),
                      GalleryItem(image: 'assets/Home/gallery17.jpg'),
                      GalleryItem(image: 'assets/Home/gallery18.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
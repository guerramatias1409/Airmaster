import 'package:airmaster/Widgets/GalleryItem.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeGalleryController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeGalleryMobileView extends View<HomeGalleryController>{
  @override
  Widget build(BuildContext context,HomeGalleryController controller) {
    return Container(
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
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery1.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery2.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery3.jpg', isMobile: true),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      GalleryItem(image: 'assets/Home/gallery4.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery5.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery6.jpg', isMobile: true),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery7.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery8.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery9.jpg', isMobile: true),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery10.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery11.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery12.jpg', isMobile: true),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery13.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery14.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery15.jpg', isMobile: true),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GalleryItem(image: 'assets/Home/gallery16.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery17.jpg', isMobile: true),
                      GalleryItem(image: 'assets/Home/gallery18.jpg', isMobile: true),
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
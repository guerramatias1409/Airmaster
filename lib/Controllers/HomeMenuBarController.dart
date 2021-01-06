import 'package:airmaster/Controllers/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeMenuBarController extends ChangeNotifier {
  HomeController homeController;

  void init(BuildContext _context) {
    homeController = Provider.of<HomeController>(_context, listen: false);
  }
}
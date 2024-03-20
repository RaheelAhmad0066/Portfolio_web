import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/app/section/home/home.dart';
import 'package:protfolio_aedbel/core/providers/scroll_provider.dart';
import '../section/home/services/services.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [
      const Home(),
      const Services(),
    ];
  }
}

import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/app/section/home/home_tab.dart';
import 'package:protfolio_aedbel/app/section/home/home_web.dart';
import 'package:protfolio_aedbel/core/res/responsive.dart';

import 'home_mobile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: HomeMobile(), tablet: HomeTab(), web: HomeWeb());
  }
}

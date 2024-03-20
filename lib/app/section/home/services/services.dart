import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/core/res/responsive.dart';
import 'services_web.dart';


class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _HomeState();
}

class _HomeState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: ServicesWeb(), tablet: ServicesWeb(), web: ServicesWeb());
  }
}

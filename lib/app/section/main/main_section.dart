import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/app/section/main/widgets/_body.dart';
import 'package:protfolio_aedbel/app/section/main/widgets/_navbar_dashboard.dart';
import 'package:protfolio_aedbel/app/section/main/widgets/mobile_drawer.dart';
import 'package:protfolio_aedbel/app/widgets/arrow_on_top.dart';
import 'package:protfolio_aedbel/core/providers/drawer_provider.dart';
import 'package:protfolio_aedbel/core/res/responsive.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return SafeArea(
        child: Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: Responsive(
            mobile: NavbarTablet(),
            tablet: NavbarTablet(),
            web: NavbarDesktop(),
          )),
      drawer: !Responsive.isWeb(context)?const MobileDrawer():null,
      body: const Stack(
        children: [Body(), ArrowOnTop()],
      ),
    ));
  }
}

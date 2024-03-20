import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/app/utils/navbar_utils.dart';
import 'package:protfolio_aedbel/app/widgets/navbar_actions_button.dart';
import 'package:protfolio_aedbel/app/widgets/navbar_logo.dart';
import 'package:protfolio_aedbel/core/color/colors.dart';
import 'package:protfolio_aedbel/core/providers/drawer_provider.dart';
import 'package:protfolio_aedbel/core/res/responsive.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({super.key});

  @override
  State<NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: bgColor,
      padding: EdgeInsets.symmetric(horizontal: 60.w / 12, vertical: 10),
      child: Row(
        children: [
          const NavBarLogo(),
          const Expanded(child: SizedBox()),
          ...NavBarUtils.names
              .asMap()
              .entries
              .map((e) => NavBarActionButton(label: e.value, index: e.key)),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: Matrix4.translationValues(0, isHover ? -15 : 0, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: isHover ? secondaryColor : primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    isHover = value;
                  });
                },
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    'Contact',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NavbarTablet extends StatefulWidget {
  const NavbarTablet({super.key});

  @override
  State<NavbarTablet> createState() => _NavbarTabletState();
}

class _NavbarTabletState extends State<NavbarTablet> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 5.w : 10, vertical: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                drawerProvider.key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu)),
          const Expanded(child: SizedBox()),
          const NavBarLogo()
        ],
      ),
    );
  }
}

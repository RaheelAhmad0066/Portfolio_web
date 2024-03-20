import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/core/animations/entrance_fader.dart';
import 'package:protfolio_aedbel/core/color/colors.dart';
import 'package:protfolio_aedbel/core/providers/scroll_provider.dart';
import 'package:protfolio_aedbel/core/res/responsive.dart';

import 'package:provider/provider.dart';

class NavBarFooterButton extends StatefulWidget {
  final String label;
  final int index;
  const NavBarFooterButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  State<NavBarFooterButton> createState() => _NavBarFooterButtonState();
}

class _NavBarFooterButtonState extends State<NavBarFooterButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: InkWell(
        onHover: (value) {
          setState(() => isHover = value);
        },
        onTap: () {
          scrollProvider.jumpTo(widget.index);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: !Responsive.isWeb(context) ? 10 : 20, vertical: 10),
          child: Text(
            widget.label,
            style: TextStyle(
                color: isHover ? Colors.orange : Colors.white,
                fontFamily: 'josefinsans',
                fontWeight: FontWeight.w300,
                fontSize: !Responsive.isWeb(context) ? 14 : 25),
          ),
        ),
      ),
    );
  }
}

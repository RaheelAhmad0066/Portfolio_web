import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/app/changes/strings.dart';
import 'package:protfolio_aedbel/app/section/home/widgets/animated_text_kit.dart';
import 'package:protfolio_aedbel/core/animations/entrance_fader.dart';
import 'package:protfolio_aedbel/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 10.h, left: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  hellotag,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                EntranceFader(
                    offset: const Offset(0, 0),
                    delay: const Duration(seconds: 2),
                    duration: const Duration(milliseconds: 800),
                    child: Image.asset(
                      'assets/gif/hi.gif',
                      height: 10,
                    )),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              yourname,
              style: const TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                const Text(
                  'A',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: tabList)
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Text(
              miniDescription,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: textColor.withOpacity(0.6)),
            ),
            SizedBox(
              height: 4.h,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              transform: Matrix4.translationValues((0), isHover ? -20 : 0, 0),
              child: InkWell(
                onHover: (v) {
                  setState(() {
                    isHover = v;
                  });
                },
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 280,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: isHover ? secondaryColor : primaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                    child: Text(
                      'download cv',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Center(
              child: Image.asset(
                'assets/imgs/profilelogo.png',
                width: 40.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}

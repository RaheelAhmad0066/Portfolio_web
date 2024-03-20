import 'package:flutter/material.dart';
import 'package:protfolio_aedbel/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class ServicesWeb extends StatefulWidget {
  const ServicesWeb({super.key});

  @override
  State<ServicesWeb> createState() => _ServicesWebState();
}

class _ServicesWebState extends State<ServicesWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      color: Colors.white,
      padding: EdgeInsets.only(top: 15.h),
      child:  Column(
        children: [
          const Text(
            'My Expertise',
            style: TextStyle(
                color: secondaryColor,
                fontFamily: 'JosefinSans',
                fontSize: 22,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: const Text(
              'Provide wide range of digital services',
              style: TextStyle(
                  color: secondaryColor,
                  fontFamily: 'JosefinSans',
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

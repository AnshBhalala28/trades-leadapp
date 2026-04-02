import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'importantStrings.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.backgroundColor = AppColors.primaryDarkBlue,
    this.textColor = AppColors.white,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      elevation: 5.0,
      borderRadius: BorderRadius.circular(50),
      shadowColor: Colors.black.withOpacity(0.25),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onTap,
        child: Container(
            height: height ?? 6.h,
          width: width ,
          padding: EdgeInsets.symmetric(vertical: 1.2.h),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 17.sp,
                fontFamily: CustomFonts.semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
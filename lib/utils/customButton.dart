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

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.backgroundColor = AppColors.primaryDarkBlue,
    this.textColor = AppColors.white,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      elevation: 5.0, // 🔥 REAL elevation (upshelu look)
      borderRadius: BorderRadius.circular(15),
      shadowColor: Colors.black.withOpacity(0.25),

      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,

        child: Container(
          width: width ?? double.infinity,
          padding: EdgeInsets.symmetric(vertical: 1.8.h),

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
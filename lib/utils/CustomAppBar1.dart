import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';

import 'importantStrings.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool showBack;
  final bool showDrawer;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showBack = false,
    this.showDrawer = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      width: Device.width,
      decoration: const BoxDecoration(color: AppColors.primaryDarkBlue),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              showBack
                  ? GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_circle_left_rounded,
                        color: AppColors.white,
                        size: 26.sp,
                      ),
                    )
                  : Icon(null),

              Text(
                title,
                style: TextStyle(
                  fontFamily: CustomFonts.bold,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontSize: 20.sp,
                ),
              ),
              showDrawer
                  ? GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: AppColors.white,
                        size: 26.sp,
                      ),
                    )
                  : Icon(null),
            ],
          ),
        ],
      ),
    );
  }
}

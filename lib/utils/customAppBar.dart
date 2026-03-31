import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:sizer/sizer.dart';

import 'importantStrings.dart';

Widget TitleBar({
  required String? title,
  Callback? drawerCallback,
  Callback? onNotification,
  Callback? onShare,
  Callback? onHeart,
  Callback? onInfo,
  Callback? onAvatarTap,
  String? avatarAssetPath,
  Color? clr,
  bool isDrawerEnabled = false,
  bool isBackEnabled = false,
  bool isMainLogoEnabled = false,
  bool isNotificationEnabled = false,
  bool isShareEnabled = false,
  bool isHeartEnabled = false,
  bool isInfoEnabled = false,
  bool isAvatarEnabled = false,
}) {
  /// Helper: Build clean icon button matching Figma (no filled background box needed)
  Widget _buildButton(IconData icon, VoidCallback? onTap) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(icon, color: AppColors.primaryDarkBlue, size: 20.sp),
      ),
    );
  }

  /// Build right-side buttons dynamically based on Figma
  final List<Widget> rightButtons = [];

  if (isShareEnabled) {
    rightButtons.add(_buildButton(Icons.share_outlined, onShare));
  }
  if (isHeartEnabled) {
    rightButtons.add(_buildButton(Icons.favorite_border_rounded, onHeart));
  }
  if (isNotificationEnabled) {
    rightButtons.add(
      _buildButton(Icons.notifications_none_rounded, onNotification),
    );
  }
  if (isInfoEnabled) {
    rightButtons.add(_buildButton(Icons.info_outline_rounded, onInfo));
  }
  if (isAvatarEnabled) {
    rightButtons.add(
      InkWell(
        onTap: onAvatarTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: CircleAvatar(
            radius: 14.sp,
            backgroundImage: avatarAssetPath != null
                ? AssetImage(avatarAssetPath)
                : null,
            backgroundColor: AppColors.inactiveIconGray.withOpacity(0.3),
            child: avatarAssetPath == null
                ? Icon(Icons.person, color: AppColors.white, size: 16.sp)
                : null,
          ),
        ),
      ),
    );
  }

  return Container(
    // We remove the top margin so it sits exactly at the top (use inside a SafeArea or alongside AppBar)
    padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
    decoration: BoxDecoration(
      color: clr ?? AppColors.white,
      // Figma styling uses a very subtle 1px border at the bottom instead of a heavy box shadow
      border: Border(
        bottom: BorderSide(
          color: AppColors.inactiveIconGray.withOpacity(0.2),
          width: 1.0,
        ),
      ),
    ),
    child: SizedBox(
      height: 6.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Left Side (Left aligned with no heavy spacing)
          if (isBackEnabled)
            _buildButton(Icons.arrow_back_rounded, () => Get.back())
          else if (isDrawerEnabled)
            _buildButton(Icons.menu_rounded, drawerCallback)
          else if (isMainLogoEnabled)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              height: 28.sp,
              width: 28.sp,
              decoration: BoxDecoration(
                color: AppColors.primaryDarkBlue,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                "T",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: CustomFonts.bold,
                ),
              ),
            )
          else
            SizedBox(width: 2.w),

          SizedBox(width: 2.w),

          Expanded(
            child: Text(
              title ?? "",
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: CustomFonts.bold,
                color: AppColors.primaryDarkBlue,
                letterSpacing: -0.5,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          /// Right Side (rendered from our rightButtons list)
          Row(children: rightButtons),
        ],
      ),
    ),
  );
}

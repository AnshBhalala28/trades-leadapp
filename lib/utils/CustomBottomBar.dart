import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/home/homeScreen_One.dart';
import 'package:tradesleadapp/ui/leads/view/availableLeadScreen.dart';
import 'package:tradesleadapp/ui/myJobPostScreen/view/myJobPostScreen.dart';
import 'package:tradesleadapp/ui/profile/view/profileScreen.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

// 👉 Screens import કર


class CustomBottomBar extends StatefulWidget {
  final int currentIndex;

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
  });

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  Future<void> _navigate(int index) async {

    if (index == widget.currentIndex) return;

    switch (index) {
      case 0:
        Get.off(() => homeScreen_one());
        break;

      case 1:
        Get.off(() => AvailableLeadScreen());
        break;

      case 2:
        Get.off(() => MyJobPostScreen1());
        break;

      case 3:
        Get.off(() => ProfileScreen());
        break;

      default:
        Get.off(() => homeScreen_one());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.home, "HOME", 0),
          _navItem(Icons.groups, "LEAD", 1),
          _navItem(Icons.work, "JOB POST", 2),
          _navItem(Icons.person, "PROFILE", 3),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final bool isSelected = widget.currentIndex == index;

    return GestureDetector(
      onTap: () => _navigate(index),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffE8EEF9) : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected
                  ? AppColors.primaryDarkBlue
                  : AppColors.black,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                color: isSelected
                    ? AppColors.primaryDarkBlue
                    : AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
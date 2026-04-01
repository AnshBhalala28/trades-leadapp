import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final IconData icon;
  final TextInputType inputType;
  final int maxLines;

  const CustomInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.icon,
    required this.inputType,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 🔹 Label
        Padding(
          padding:  EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: CustomFonts.bold,
              fontSize: 16.sp,
              color: AppColors.primaryDarkBlue,
            ),
          ),
        ),

        /// 🔹 TextField Box
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
            child: TextField(
              maxLines: maxLines,

              style: TextStyle(
                color: AppColors.primaryDarkBlue,
              ),
              textAlignVertical: TextAlignVertical.top,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  fontFamily: CustomFonts.regular,
                  fontSize: 15.5.sp,
                  color: AppColors.primaryDarkBlue,
                ),
                prefixIcon: Padding(
                  padding:  EdgeInsets.only(bottom: maxLines > 1 ? 50 : 0),
                  child: Icon(
                    icon,
                    color: AppColors.primaryDarkBlue,
                  ),
                ),
                filled: true,
                fillColor: AppColors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class CustomInputField extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final IconData icon;
  final TextInputType inputType;
  final int maxLines;
  final bool isPassword;

  const CustomInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.icon,
    required this.inputType,
    this.isPassword = false,
    this.maxLines = 1,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 🔹 Label
        Padding(
          padding: EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            widget.label,
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
              maxLines: widget.isPassword ? 1 : widget.maxLines,
              obscureText: widget.isPassword ? isObscure : false,

              style: TextStyle(
                color: AppColors.primaryDarkBlue,
              ),
              textAlignVertical: TextAlignVertical.top,
              controller: widget.controller,
              keyboardType: widget.inputType,

              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: TextStyle(
                  fontFamily: CustomFonts.regular,
                  fontSize: 15.5.sp,
                  color: AppColors.primaryDarkBlue,
                ),

                /// 🔹 Prefix Icon
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                      bottom: widget.maxLines > 1 ? 50 : 0),
                  child: Icon(
                    widget.icon,
                    color: AppColors.primaryDarkBlue,
                  ),
                ),

                /// 🔥 Password Toggle Icon
                suffixIcon: widget.isPassword
                    ? IconButton(
                  icon: Icon(
                    isObscure
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.primaryDarkBlue,
                  ),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                )
                    : null,

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
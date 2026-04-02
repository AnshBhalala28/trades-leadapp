import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class CustomSearchField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final VoidCallback? onClear;

  const CustomSearchField({
    super.key,
    required this.hint,
    required this.controller,
    this.onChanged,
    this.onClear,
  });

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  bool hasText = false;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() {
      setState(() {
        hasText = widget.controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,

        style: TextStyle(
          color: AppColors.primaryDarkBlue,
          fontSize: 15.5.sp,
        ),

        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontFamily: CustomFonts.regular,
            fontSize: 15.5.sp,
            color: AppColors.primaryDarkBlue.withOpacity(0.6),
          ),


          prefixIcon: Icon(
            Icons.search,
            color: AppColors.primaryDarkBlue,
          ),


          suffixIcon: hasText
              ? IconButton(
            icon: Icon(
              Icons.close,
              color: AppColors.primaryDarkBlue,
            ),
            onPressed: () {
              widget.controller.clear();

              if (widget.onClear != null) {
                widget.onClear!();
              }
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
            vertical: 14,
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}
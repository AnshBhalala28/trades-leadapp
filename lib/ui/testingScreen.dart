import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({super.key});

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backGround,
      body: Stack(
        children: [
          Column(
            children: [
              // SizedBox(height: 2.h,),
              TitleBar(title: "Testing Screen", isBackEnabled: true),
            ],
          ),
        ],
      ),
    );
  }
}

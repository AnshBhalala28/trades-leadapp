import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/ui/leads/view/availableLeadScreen.dart';
import 'package:tradesleadapp/ui/theBlueChip/view/theBlueChip.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/customButton.dart';
import 'package:tradesleadapp/utils/customInputField.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class RequestQuoteScreen extends StatefulWidget {
  RequestQuoteScreen({super.key});

  @override
  State<RequestQuoteScreen> createState() => _RequestQuoteScreenState();
}

class _RequestQuoteScreenState extends State<RequestQuoteScreen> {
  final TextEditingController locationController = TextEditingController();
  final TextEditingController descriptionController =
      TextEditingController(); // ✅ NEW

  final List<ServiceModel> services = [
    ServiceModel(title: "General Repair", icon: Icons.build),
    ServiceModel(title: "Plumbing", icon: Icons.plumbing),
    ServiceModel(title: "Electrical", icon: Icons.electrical_services),
    ServiceModel(title: "Painting", icon: Icons.format_paint),
  ];

  final List<String> timeSlots = ["Morning", "Afternoon", "Evening"];
  int selectedTimeIndex = 1;

  int selectedIndex = 0;
  List<File> selectedImages = [];

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        selectedImages.add(File(pickedFile.path));
      });
    }
  }

  void removeImage(int index) {
    setState(() {
      selectedImages.removeAt(index);
    });
  }

  DateTime? selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),

      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primaryDarkBlue,
              onPrimary: AppColors.white,
              onSurface: AppColors.primaryDarkBlue,
            ),

            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primaryDarkBlue,
              ),
            ),

            dialogBackgroundColor: AppColors.white,
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Stack(
        children: [
          Column(
            children: [
              TitleBar(
                title: "Request Quotes",
                isBackEnabled: true,
                isInfoEnabled: true,
              ),
              SizedBox(height: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildProgressBar(),
                      SizedBox(height: 2.h),
                      /// LOCATION
                      CustomInputField(
                        label: "Location",
                        hint: "Enter Postcode (e.g. Sw1A 1AA)",
                        controller: locationController,
                        icon: CupertinoIcons.location_solid,
                        inputType: TextInputType.text,
                      ),

                      SizedBox(height: 2.h),

                      Text(
                        "TRADE CATEGORY",
                        style: TextStyle(
                          fontFamily: CustomFonts.bold,
                          fontSize: 17.sp,
                          color: AppColors.primaryDarkBlue,
                        ),
                      ),

                        SizedBox(height: 2.h,),

                        GridView.builder(
                          padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: services.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 2.5,
                        ),
                        itemBuilder: (context, index) {
                          final item = services[index];
                          bool isSelected = selectedIndex == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 250),
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primaryDarkBlue
                                    : AppColors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    color: isSelected
                                        ? AppColors.primaryDarkBlue.withOpacity(
                                            0.3,
                                          )
                                        : AppColors.black.withOpacity(0.08),
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                border: Border.all(
                                  color: isSelected
                                      ? Colors.transparent
                                      : Colors.grey.shade100,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    item.icon,
                                    size: 22.sp,
                                    color: isSelected
                                        ? Colors.white
                                        : AppColors.primaryDarkBlue,
                                  ),
                                  SizedBox(width: 3.w),
                                  Expanded(
                                    child: Text(
                                      item.title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.semiBold,
                                        color: isSelected
                                            ? AppColors.white
                                            : AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),

                      SizedBox(height: 2.h),

                      /// DESCRIPTION (FIXED)
                      CustomInputField(
                        label: "DESCRIPTION",
                        hint: "Describe the issue or project in detail.....",
                        controller: descriptionController,
                        // ✅ FIX
                        icon: CupertinoIcons.doc,
                        inputType: TextInputType.text,
                        maxLines: 3,
                      ),

                      SizedBox(height: 2.h),

                      /// TITLE
                      Text(
                        "REFERENCE PHOTOS",
                        style: TextStyle(
                          fontFamily: CustomFonts.bold,
                          fontSize: 17.sp,
                          color: AppColors.primaryDarkBlue,
                        ),
                      ),

                      SizedBox(height: 1.h),

                      SizedBox(
                        height: 14.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                            vertical: 1.h,
                          ),
                          itemCount: selectedImages.length + 1,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return GestureDetector(
                                onTap: () {
                                  pickImage();
                                },
                                child: Container(
                                  width: 30.w,
                                  margin: EdgeInsets.only(right: 3.w),
                                  decoration: BoxDecoration(
                                    color: AppColors.backGround,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: AppColors.primaryDarkBlue
                                          .withOpacity(0.5),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add_a_photo_outlined,
                                        color: AppColors.primaryDarkBlue,
                                        size: 28.sp,
                                      ),
                                      SizedBox(height: 1.h),
                                      Text(
                                        "Add Photo",
                                        style: TextStyle(
                                          color: AppColors.primaryDarkBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }

                            final imageFile = selectedImages[index - 1];

                            return Stack(
                              children: [
                                Container(
                                  width: 30.w,
                                  margin: EdgeInsets.only(right: 3.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: FileImage(imageFile),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 5,
                                  right: 18,
                                  child: GestureDetector(
                                    onTap: () => removeImage(index - 1),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: AppColors.black,
                                      child: Icon(
                                        Icons.close,
                                        color: AppColors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 2.h),
                      Text(
                        "PREFERRED TIMING",
                        style: TextStyle(
                          fontFamily: CustomFonts.bold,
                          fontSize: 17.sp,
                          color: AppColors.primaryDarkBlue,
                        ),
                      ),

                      SizedBox(height: 1.h),

                      GestureDetector(
                        onTap: () => _pickDate(context),
                        child: Material(
                          elevation: 5.0,
                          shadowColor: AppColors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: AppColors.primaryDarkBlue,
                                  size: 24.sp,
                                ),
                                SizedBox(width: 4.w),

                                Expanded(
                                  child: Text(
                                    selectedDate == null
                                        ? "Select Date"
                                        : DateFormat(
                                            'dd/MM/yyyy',
                                          ).format(selectedDate!),
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: CustomFonts.regular,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ),

                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.primaryDarkBlue,
                                  size: 20.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < timeSlots.length; i++)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedTimeIndex = i;
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 250),
                                width: 28.w,
                                padding: EdgeInsets.symmetric(vertical: 2.5.h),

                                decoration: BoxDecoration(
                                  color: selectedTimeIndex == i
                                      ? AppColors.primaryDarkBlue
                                      : AppColors.white,

                                  borderRadius: BorderRadius.circular(15),

                                  boxShadow: [
                                    BoxShadow(
                                      color: selectedTimeIndex == i
                                          ? AppColors.black.withOpacity(0.15)
                                          : AppColors.black.withOpacity(0.05),
                                      blurRadius: 15,
                                      spreadRadius: 1,
                                      offset: Offset(0, 6),
                                    ),
                                  ],
                                ),

                                child: Center(
                                  child: Text(
                                    timeSlots[i],
                                    style: TextStyle(
                                      color: selectedTimeIndex == i
                                          ? AppColors.white
                                          : AppColors.primaryDarkBlue,

                                      fontFamily: selectedTimeIndex == i
                                          ? CustomFonts.bold
                                          : CustomFonts.regular,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 2.h),

                      CustomButton(
                        title: "Submit Request",
                        backgroundColor: AppColors.primaryDarkBlue,
                        textColor: AppColors.white,
                        onTap: () {
                          Get.to(() => AvailableLeadScreen());
                        },
                      ),
                      SizedBox(height: 1.h),

                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Step 1 OF 3: NEXT, WE FIND PROS",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColors.primaryDarkBlue,
                            fontFamily: CustomFonts.semiBold,
                          ),
                        ),
                      ),

                      SizedBox(height: 5.h),
                    ],
                  ).paddingSymmetric(horizontal: 4.w),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProgressBar() {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "PROJECT DETAILS",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade700,
                  letterSpacing: 1.1,
                ),
              ),
              Text(
                "Step 1 of 3",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0D2451),
                ),
              ),
            ],
          ),

          SizedBox(height: 1.5.h),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: 0.33,
              minHeight: 8,
              backgroundColor: Colors.grey.shade200,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0D2451)),
            ),
          ),
        ],
    );
  }
}

/// 🔹 Model Class
class ServiceModel {
  final String title;
  final IconData icon;

  ServiceModel({required this.title, required this.icon});
}

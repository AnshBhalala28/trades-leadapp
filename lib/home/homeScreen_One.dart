import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/home/homeScreen_two.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/customDrawer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class homeScreen_one extends StatefulWidget {
  const homeScreen_one({super.key});

  @override
  State<homeScreen_one> createState() => _homeScreen_oneState();
}



class _homeScreen_oneState extends State<homeScreen_one> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: drawer1(),
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    "Find Trade",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                      fontFamily: CustomFonts.regular,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(homeScreen_two());
                    },
                    child: Icon(Icons.notifications_none),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://pixabay.com/images/download/x-10117989_1920.jpg",
                        height: 36,
                        width: 36,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.person);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// ================= HERO + SEARCH OVERLAY =================
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        /// HERO
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 16, 16, 60),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xff0D2B52),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PREMIUM MARKETPLACE",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15.sp,
                                  fontFamily: CustomFonts.medium,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Find Your Pro",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: CustomFonts.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Connecting you with the UK's most elite certified tradespeople.",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: CustomFonts.medium,
                                  fontSize: 15.sp,
                                ),
                              ),
                              SizedBox(height: 30), // space for overlap
                            ],
                          ),
                        ),

                        /// SEARCH (OVERLAP)
                        Positioned(
                          bottom: -42,
                          left: 16,
                          right: 16,
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF1F3F7),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.build),
                                      SizedBox(width: 10),
                                      Text(
                                        "What service do you need?",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: CustomFonts.regular,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xffF1F3F7),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.location_on_outlined),
                                            SizedBox(width: 10),
                                            Text(
                                              "Postcode",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontFamily: CustomFonts.regular,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xff0D2B52),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    /// IMPORTANT SPACE (overlap fix)
                    SizedBox(height: 7.h),

                    /// ================= BROWSE =================
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            "Browse Expertise",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                              fontFamily: CustomFonts.regular,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "VIEW ALL",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: CustomFonts.regular,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    /// ================= TOP CARDS (HORIZONTAL) =================
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          bool isSelected = selectedIndex == index;

                          List icons = [
                            Icons.plumbing,
                            Icons.flash_on,
                            Icons.home_repair_service,
                            Icons.carpenter,
                            Icons.build,
                          ];

                          List titles = [
                            "Plumbing & Heating",
                            "Electrical Systems",
                            "Roofing",
                            "Carpentry",
                            "Construction",
                          ];

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.only(
                                left: index == 0 ? 16 : 10,
                              ),
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Color(0xff0D2B52)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    icons[index],
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  Spacer(),
                                  Text(
                                    titles[index],
                                    style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                      fontFamily: CustomFonts.regular,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 15),

                    /// ================= SMALL CATEGORY (HORIZONTAL) =================
                    SizedBox(
                      height: 90,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          List titles = [
                            "Roofing",
                            "Carpentry",
                            "Painting",
                            "Cleaning",
                            "Plaster",
                            "Flooring",
                          ];

                          List icons = [
                            Icons.home,
                            Icons.handyman,
                            Icons.format_paint,
                            Icons.cleaning_services,
                            Icons.construction,
                            Icons.layers,
                          ];

                          return Container(
                            width: 140,
                            margin: EdgeInsets.only(left: index == 0 ? 16 : 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xffE9EDF5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(icons[index], size: 20),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    titles[index],
                                    style: TextStyle(
                                      fontFamily: CustomFonts.regular,
                                      fontSize: 14.5.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 15),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xffF1F3F7),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(Icons.architecture),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Building & Construction",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.regular,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "LARGE SCALE PROJECTS",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                    fontFamily: CustomFonts.regular,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 17.sp),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            "Verified Masters",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                              fontFamily: CustomFonts.regular,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "VIEW ALL",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: CustomFonts.regular,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 1.5.h),

                    SizedBox(
                      height: 250,
                      child: PageView.builder(
                        controller: PageController(viewportFraction: 0.9),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          List images = [
                            "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                            "https://images.unsplash.com/photo-1502767089025-6572583495b0",
                            "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce",
                            "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d",
                            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
                          ];

                          return Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 16 : 8,
                              right: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                      child: Image.network(
                                        images[index],
                                        height: 150,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xff0D2B52),
                                              size: 15.sp,
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              "4.9",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontFamily: CustomFonts.regular,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Johnathan Vance $index",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: CustomFonts.bold,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "MASTER ELECTRICIAN",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14.5.sp,
                                          fontFamily: CustomFonts.regular,
                                        ),
                                      ),
                                      SizedBox(height: 8),

                                      Row(
                                        children: [
                                          Icon(
                                            Icons.verified,
                                            size: 16.sp,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "240 Recent Projects",
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 14.5.sp,
                                              fontFamily: CustomFonts.regular,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff0D2B52),
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: 0,),
    );
  }
}

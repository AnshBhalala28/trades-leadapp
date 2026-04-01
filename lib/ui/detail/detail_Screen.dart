import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/importantStrings.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

ScrollController _scrollController = ScrollController();
PageController _pageController = PageController();
int _currentPage = 0;

final List<String> images = [
  "https://images.unsplash.com/photo-1505691938895-1758d7feb511",
  "https://images.unsplash.com/photo-1493666438817-866a91353ca9",
  "https://images.unsplash.com/photo-1507089947368-19c1da9775ae",
];
List<Map<String, dynamic>> reviews = [
  {
    "name": "Sarah Cunningham",
    "time": "2 days ago",
    "review":
        "Exceptional attention to detail. Julian didn’t just fix the wiring; he redesigned our lighting scheme to completely transform the living space.",
    "initial": "SC",
    "rating": 5,
  },
  {
    "name": "Marcus Wright",
    "time": "1 week ago",
    "review":
        "Prompt, professional, and very clean worker. Highly recommend for any complex rewiring tasks.",
    "initial": "MW",
    "rating": 4,
  },
  {
    "name": "Hair Wait",
    "time": "50 month ago",
    "review":
        "Prompt, professional, and very clean worker. Highly recommend for any complex rewiring tasks.",
    "initial": "HH",
    "rating": 4,
  },
];

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _pageController = PageController();
    autoScroll();
    startAutoScroll();
  }
  void autoScroll() {
    Future.delayed(const Duration(seconds: 3), () {
      if (_pageController.hasClients) {
        int nextPage = _currentPage + 1;

        if (nextPage >= images.length) {
          nextPage = 0;
        }

        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );

        _currentPage = nextPage;
      }

      autoScroll();
    });
  }
  void startAutoScroll() {
    Future.delayed(const Duration(seconds: 2), () {
      if (_scrollController.hasClients) {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.offset;

        double nextScroll = currentScroll + 230; // card width + margin

        if (nextScroll >= maxScroll) {
          nextScroll = 0;
        }

        _scrollController.animateTo(
          nextScroll,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }

      startAutoScroll(); // loop
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6FA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [

                SizedBox(
                  height: 380,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [


                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.2),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),


                Positioned(
                  top: 40,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back, color: Colors.white),
                      Row(
                        children: [
                          Icon(Icons.share, color: Colors.white),
                          SizedBox(width: 12),
                          Icon(Icons.favorite_border, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),


                Positioned(
                  bottom: 20,
                  left: 16,
                  right: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xff0D2B52),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "MASTER ELECTRICIAN",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                       SizedBox(height: 5),
                       Text(
                        "Julian Sterling",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(height: 5),
                       Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Colors.white70, size: 19.sp),
                          SizedBox(width: 5),
                          Text(
                            "Mayfair, London",
                            style: TextStyle(color: Colors.white70,fontSize: 17.sp,fontFamily: CustomFonts.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                Positioned(
                  bottom: -30,
                  right: 16,
                  child: Container(
                    width: 110,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: Column(
                      children: const [
                        Text("4.9",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, size: 14),
                            Icon(Icons.star, size: 14),
                            Icon(Icons.star, size: 14),
                            Icon(Icons.star, size: 14),
                            Icon(Icons.star_half, size: 14),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text("128 REVIEWS",
                            style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5.4.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEFF5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "15+",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: CustomFonts.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "YEARS EXP",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: CustomFonts.medium,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 100,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEFF5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "240",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: CustomFonts.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "PROJECTS",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: CustomFonts.medium,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 100,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEFF5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Vetted",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: CustomFonts.bold,
                            fontSize: 15.5.sp,
                          ),
                        ),
                        SizedBox(height: 5),
                        Icon(
                          Icons.verified,
                          size: 17.sp,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The Blueprint of Quality",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: CustomFonts.medium,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Julian Sterling combines classical apprenticeship training with modern smart-home integration. Specializing in high-end residential renovations and architectural lighting design.",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: CustomFonts.regular,
                  fontSize: 15.5.sp,
                ),
              ),
            ),

            SizedBox(height: 15),


            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEFF5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Smart Home Setup",
                        style: TextStyle(
                          fontSize: 15.5.sp,
                          fontFamily: CustomFonts.regular,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEFF5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Full Rewiring",
                        style: TextStyle(
                          fontSize: 15.5.sp,
                          fontFamily: CustomFonts.regular,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEFF5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Lighting Design",
                        style: TextStyle(
                          fontSize: 15.5.sp,
                          fontFamily: CustomFonts.regular,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEFF5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Emergency Repairs",
                        style: TextStyle(
                          fontSize: 15.5.sp,
                          fontFamily: CustomFonts.regular,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Project Canvas",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: CustomFonts.medium,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: CustomFonts.bold,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 2.h),

            SizedBox(
              height: 220,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 220,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        /// GRADIENT
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),


                        Positioned(
                          bottom: 12,
                          left: 12,
                          right: 12,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "PROJECT ${index + 1}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.regular,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Architectural Lighting",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontFamily: CustomFonts.regular,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff0D2B52),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Availability",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: CustomFonts.medium,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Earliest slot: Monday, 9:00 AM",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15.sp,
                            fontFamily: CustomFonts.medium,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Client Discourse",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: CustomFonts.medium,
                  ),
                ),
              ),
            ),

            SizedBox(height: 2.h),

            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: reviews.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var data = reviews[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: const Color(0xffE4E8F0),
                        child: Text(
                          data["initial"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            fontFamily: CustomFonts.regular,
                          ),
                        ),
                      ),

                      SizedBox(width: 3.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data["name"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                    fontFamily: CustomFonts.regular,
                                  ),
                                ),

                                Row(
                                  children: List.generate(
                                    5,
                                    (i) => Icon(
                                      i < data["rating"]
                                          ? Icons.star
                                          : Icons.star_border,
                                      size: 15.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 2),

                            Text(
                              data["time"],
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.grey,
                                fontFamily: CustomFonts.bold,
                              ),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              '"${data["review"]}"',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                                fontFamily: CustomFonts.medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            SizedBox(height: 2.h),

            Text(
              "READ ALL 128 REVIEWS",
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 1,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 5.h),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Color(0xff0D2B52),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.chat_bubble_outline, color: Colors.white),
            ),
            SizedBox(width: 12),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Color(0xff0D2B52),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Request a Quote",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: CustomFonts.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// import '../utils/importantStrings.dart';
//
// class homeScreen_two extends StatefulWidget {
//   const homeScreen_two({super.key});
//
//   @override
//   State<homeScreen_two> createState() => _homeScreen_twoState();
// }
//
// class _homeScreen_twoState extends State<homeScreen_two> {
//   int selectedChip = 0;
//
//   List chips = ["All", "Electrician", "Plumber", "Carpenter", "Painter"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backGround,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding:  EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Icon(Icons.menu),
//                   ),
//
//                    SizedBox(width: 12),
//
//                    Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Available Pros",
//                           style: TextStyle(
//                             color: Color(0xff0D2B52),
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           "24 Certified Specialists found in London",
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             /// ================= SEARCH =================
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 16),
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Row(
//                 children: [
//                   Icon(Icons.search, color: Colors.grey),
//                   SizedBox(width: 10),
//                   Text("Search professionals...",
//                       style: TextStyle(color: Colors.grey)),
//                 ],
//               ),
//             ),
//
//              SizedBox(height: 2.h),
//
//             /// ================= FILTER CHIPS =================
//             SizedBox(
//               height: 40,
//               child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: chips.length,
//                 itemBuilder: (context, index) {
//                   bool isSelected = selectedChip == index;
//
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedChip = index;
//                       });
//                     },
//                     child: Container(
//                       margin: EdgeInsets.only(left: index == 0 ? 16 : 10),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 16, vertical: 8),
//                       decoration: BoxDecoration(
//                         color: isSelected
//                             ? const Color(0xff0D2B52)
//                             : Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Text(
//                         chips[index],
//                         style: TextStyle(
//                           color:
//                           isSelected ? Colors.white : Colors.black,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//
//              SizedBox(height: 0.5.h),
//             Expanded(
//               child: Container(
//                 decoration:  BoxDecoration(
//                   color: Color(0xffF5F7FB),
//                   borderRadius:
//                   BorderRadius.vertical(top: Radius.circular(25)),
//                 ),
//                 child: ListView(
//                   children: [
//                     SizedBox(height: 15),
//                     Container(
//                       margin:  EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                       padding:  EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               CircleAvatar(
//                                 radius: 25,
//                                 backgroundImage: NetworkImage(
//                                   "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
//                                 ),
//                               ),
//                               SizedBox(width: 10),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text("Julian Thorane",
//                                         style:  TextStyle(
//                                             fontWeight: FontWeight.bold)),
//                                     Text("MASTER ELECTRICIAN",
//                                         style: TextStyle(color: Colors.grey)),
//                                     Row(
//                                       children: [
//                                         Icon(Icons.location_on,
//                                             size: 14, color: Colors.grey),
//                                         Text("1.2 Miles",
//                                             style:
//                                             TextStyle(color: Colors.grey)),
//                                         SizedBox(width: 10),
//                                         Icon(Icons.verified,
//                                             size: 14, color: Colors.blue),
//                                         Text(" Certified"),
//                                       ],
//                                     ),
//
//                                     SizedBox(height: 5),
//
//                                     /// EXTRA INFO
//                                     Text("5+ yrs exp • ₹500/hr",
//                                         style: TextStyle(fontSize: 12)),
//                                   ],
//                                 ),
//                               ),
//
//                               Column(
//                                 children: [
//                                   Container(
//                                     padding:  EdgeInsets.symmetric(
//                                         horizontal: 8, vertical: 4),
//                                     decoration: BoxDecoration(
//                                       color:  Color(0xffE9EDF5),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     child: Text("4.9"),
//                                   ),
//
//                                   SizedBox(height: 5),
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 6, vertical: 2),
//                                     decoration: BoxDecoration(
//                                       color: Colors.green,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     child:  Text("Available",
//                                         style: TextStyle( color: Colors.white, fontSize: 10)),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//
//                           SizedBox(height: 10),
//
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Container(
//                                   height: 45,
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                     color:  Color(0xff0D2B52),
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child:  Text("View Profile",
//                                       style: TextStyle(color: Colors.white)),
//                                 ),
//                               ),
//                               SizedBox(width: 10),
//                               Container(
//                                 height: 45,
//                                 width: 45,
//                                 decoration: BoxDecoration(
//                                   color:  Color(0xffE9EDF5),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child:  Icon(Icons.chat_bubble_outline),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//
//                     Container(
//                       margin:  EdgeInsets.symmetric(
//                           horizontal: 16, vertical: 10),
//                       padding:  EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                         color:  Color(0xff0D2B52),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children:  [
//                               CircleAvatar(
//                                 radius: 20,
//                                 backgroundImage: NetworkImage(
//                                     "https://images.unsplash.com/photo-1500648767791-00dcc994a43e"),
//                               ),
//                               Spacer(),
//                               Column(
//                                 children: [
//                                   Text("5.0",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 22,
//                                           fontWeight: FontWeight.bold)),
//                                   Text("ELITE PRO",
//                                       style: TextStyle(
//                                           color: Colors.white70,
//                                           fontSize: 10))
//                                 ],
//                               )
//                             ],
//                           ),
//                           SizedBox(height: 10),
//                           Text("Elena Rossi",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold)),
//                           Text(
//                             "Structural Architect • 0.8 miles",
//                             style: TextStyle(color: Colors.white70),
//                           ),
//                           SizedBox(height: 10),
//
//                           const Text("10+ yrs exp • ₹1200/hr",
//                               style: TextStyle(color: Colors.white)),
//
//                           const SizedBox(height: 15),
//
//                           Container(
//                             height: 45,
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child:  Text("SCHEDULE CONSULTATION"),
//                           )
//                         ],
//                       ),
//                     ),
//
//                     /// CARD 2
//                     _card(
//                       name: "Marcus Webb",
//                       role: "CUSTOM CARPENTRY",
//                       distance: "2.5 miles",
//                       rating: "4.7",
//                     ),
//
//                     /// CARD 3
//                     _card(
//                       name: "Sienna Black",
//                       role: "LANDSCAPE ARTIST",
//                       distance: "3.1 miles",
//                       rating: "4.8",
//                     ),
//
//                     SizedBox(height: 100),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _card({
//     required String name,
//     required String role,
//     required String distance,
//     required String rating,
//   }) {
//     return Container(
//       margin:  EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       padding:  EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//                CircleAvatar(
//                 radius: 25,
//                 backgroundImage: NetworkImage(
//                   "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
//                 ),
//               ),
//                SizedBox(width: 10),
//                Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(name,
//                         style:  TextStyle(
//                             fontWeight: FontWeight.bold)),
//                     Text(role,
//                         style: TextStyle(color: Colors.grey)),
//                     Row(
//                       children: [
//                          Icon(Icons.location_on,
//                             size: 14, color: Colors.grey),
//                         Text(distance,
//                             style:
//                              TextStyle(color: Colors.grey)),
//                          SizedBox(width: 10),
//                          Icon(Icons.verified,
//                             size: 14, color: Colors.blue),
//                          Text(" Certified"),
//                       ],
//                     ),
//
//                      SizedBox(height: 5),
//
//                     /// EXTRA INFO
//                      Text("5+ yrs exp • ₹500/hr",
//                         style: TextStyle(fontSize: 12)),
//                   ],
//                 ),
//               ),
//
//               Column(
//                 children: [
//                   Container(
//                     padding:  EdgeInsets.symmetric(
//                         horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color:  Color(0xffE9EDF5),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Text(rating),
//                   ),
//
//                    SizedBox(height: 5),
//                   Container(
//                     padding:  EdgeInsets.symmetric(
//                         horizontal: 6, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child:  Text("Available",
//                         style: TextStyle(
//                             color: Colors.white, fontSize: 10)),
//                   ),
//                 ],
//               )
//             ],
//           ),
//
//            SizedBox(height: 10),
//
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 45,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     color:  Color(0xff0D2B52),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child:  Text("View Profile",
//                       style: TextStyle(color: Colors.white)),
//                 ),
//               ),
//                SizedBox(width: 10),
//               Container(
//                 height: 45,
//                 width: 45,
//                 decoration: BoxDecoration(
//                   color:  Color(0xffE9EDF5),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child:  Icon(Icons.chat_bubble_outline),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';

import '../utils/customDrawer.dart';
import '../utils/importantStrings.dart';

class homeScreen_two extends StatefulWidget {
  const homeScreen_two({super.key});

  @override
  State<homeScreen_two> createState() => _homeScreen_twoState();
}
int _currentPage = 0;
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
class _homeScreen_twoState extends State<homeScreen_two> {
  int selectedChip = 0;
  late PageController _pageController;
  List chips = ["All", "Electrician", "Plumber", "Carpenter", "Painter"];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.95);
    Future.delayed(Duration.zero, () {
      autoScroll();
    });
  }

  void autoScroll() {
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; // 🔥 important

      if (_pageController.hasClients) {
        _currentPage++;

        if (_currentPage >= 5) {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }

      autoScroll();
    });
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: drawer1(),
      // backgroundColor: const Color(0xffF5F7FB),
      backgroundColor: const Color(0xffF5F7FB),
      body: Column(
        children: [
      SizedBox(height: 6.h,),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // 🔥 FIX
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
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Available Pros",
                        style: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: CustomFonts.regular,
                        ),
                      ),

                      Text(
                        "24 Specialists found",
                        style: TextStyle(color: Colors.grey,fontFamily: CustomFonts.regular,fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// ================= SEARCH =================
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 16),
            height: 50,
            padding:  EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child:  Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10),
                Text("Search professionals...",
                    style: TextStyle(color: Colors.grey,fontFamily: CustomFonts.regular,)),
              ],
            ),
          ),

          SizedBox(height: 2.h),

          /// ================= FILTER =================
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: chips.length,
              itemBuilder: (context, index) {
                bool isSelected = selectedChip == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedChip = index;
                    });
                  },
                  child: Container(
                    margin:
                    EdgeInsets.only(left: index == 0 ? 16 : 10),
                    padding:  EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected
                          ?  Color(0xff0D2B52)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      chips[index],
                      style: TextStyle(
                        fontSize: 16.sp,
                          fontFamily: CustomFonts.regular,
                          color: isSelected
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 1.h),

          /// ================= BODY =================
          Expanded(
            child: ListView(
              children: [
                /// 🔥 TOP CARD (DIFFERENT DESIGN)
                Container(
                  margin:  EdgeInsets.all(16),
                  padding:  EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                       SizedBox(width: 10),
                       Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text("Julian Thorne",
                                style: TextStyle(
                                    fontFamily: CustomFonts.regular,
                                    fontSize: 16.sp,
                                    fontWeight:
                                    FontWeight.bold)),
                            Text("MASTER ELECTRICIAN",
                                style:
                                TextStyle(color: Colors.grey,fontFamily: CustomFonts.regular,fontSize: 15.5.sp)),
                            SizedBox(height: 5),
                            Text("⭐ 4.9 • 1.2 miles • ₹500/hr",style: TextStyle(fontFamily: CustomFonts.regular,fontSize: 14.5.sp),),
                          ],
                        ),
                      ),
                       Icon(Icons.arrow_forward_ios, size: 16.sp)
                    ],
                  ),
                ),

                SizedBox(
                  height: 220,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(2),
                        padding:  EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color:  Color(0xff0D2B52),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children:  [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                                  ),
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text("5.0",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19.sp,
                                            fontWeight: FontWeight.bold,fontFamily: CustomFonts.regular,)),
                                    Text("ELITE PRO",
                                        style: TextStyle(
                                            color: Colors.white70, fontSize: 14.sp,fontFamily: CustomFonts.regular,fontWeight: FontWeight.bold))
                                  ],
                                )
                              ],
                            ),
                             SizedBox(height: 10),
                             Text("Elena Rossi",
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold,fontFamily: CustomFonts.regular,fontSize: 16.sp)),
                             Text(
                              "Structural Architect • 0.8 miles",
                              style: TextStyle(color: Colors.white70,fontFamily: CustomFonts.regular,fontSize: 15.sp),
                            ),
                             SizedBox(height: 8),
                             Text("10+ yrs exp • ₹1200/hr",
                                style: TextStyle(color: Colors.white,fontFamily: CustomFonts.regular,fontSize: 15.sp)),
                             Spacer(),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child:  Text("SCHEDULE CONSULTATION",style: TextStyle(fontFamily: CustomFonts.regular,fontSize: 16.sp),),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),

                 SizedBox(height: 10),

                _card(
                  name: "Marcus Webb",
                  role: "CUSTOM CARPENTRY",
                  distance: "2.5 miles",
                  rating: "4.7",
                ),

                _card(
                  name: "Sienna Black",
                  role: "LANDSCAPE ARTIST",
                  distance: "3.1 miles",
                  rating: "4.8",
                ),

                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: 0,),
    );
  }

  /// 🔥 LIST CARD
  Widget _card({
    required String name,
    required String role,
    required String distance,
    required String rating,
  }) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding:  EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
               CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                ),
              ),
               SizedBox(width: 10),
               Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style:  TextStyle(
                            fontWeight: FontWeight.bold,fontFamily: CustomFonts.regular,fontSize: 15.sp)),
                    Text(role,
                        style: TextStyle(color: Colors.grey,fontFamily: CustomFonts.regular,fontSize: 15.sp)),
                    Row(
                      children: [
                         Icon(Icons.location_on,
                            size: 16.sp, color: Colors.grey),
                        Text(distance,
                            style:
                             TextStyle(color: Colors.grey,fontFamily: CustomFonts.regular,fontSize: 15.sp)),
                         SizedBox(width: 10),
                         Icon(Icons.verified,
                            size: 16.sp, color: Colors.blue),
                         Text(" Certified",style: TextStyle(fontFamily: CustomFonts.regular,fontSize: 15.sp),),
                      ],
                    ),

                     SizedBox(height: 5),

                    /// EXTRA INFO
                     Text("5+ yrs exp • ₹500/hr",
                        style: TextStyle(fontSize: 15.sp,fontFamily: CustomFonts.regular,)),
                  ],
                ),
              ),

              Column(
                children: [
                  Container(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color:  Color(0xffE9EDF5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(rating),
                  ),

                   SizedBox(height: 5),
                  Container(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Text("Available",
                        style: TextStyle(
                            color: Colors.white, fontSize: 15.sp,fontFamily: CustomFonts.regular,)),
                  ),
                ],
              )
            ],
          ),

           SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:  Color(0xff0D2B52),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Text("View Profile",
                      style: TextStyle(color: Colors.white,fontFamily: CustomFonts.regular,fontSize: 16.sp)),
                ),
              ),
               SizedBox(width: 10),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color:  Color(0xffE9EDF5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Icon(Icons.chat_bubble_outline),
              )
            ],
          )
        ],
      ),
    );
  }
}
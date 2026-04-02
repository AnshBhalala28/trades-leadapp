import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/CustomAppBar1.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/customButton.dart';
import 'package:tradesleadapp/utils/customDrawer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      key: scaffoldKey,
      drawer: drawer1(),
      body: Stack(
        children: [
          Column(
            children: [
              CustomAppBar(title: "Payment", showBack: true, showDrawer: true),
              SizedBox(height: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        elevation: 7,
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: AppColors.primaryDarkBlue,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AVAILABLE FUNDS',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 15.sp,
                                  fontFamily: CustomFonts.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '£150.00',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 17.sp,
                                  fontFamily: CustomFonts.regular,
                                ),
                              ),
                              SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Top-up £50',
                                        style: TextStyle(
                                          color: AppColors.primaryDarkBlue,
                                          fontFamily: CustomFonts.bold,
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: AppColors.white.withOpacity(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Top-up £100',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: CustomFonts.bold,
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'YOUR PLAN',
                            style: TextStyle(
                              color: AppColors.primaryDarkBlue,
                              fontSize: 17.sp,
                              fontFamily: CustomFonts.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.green.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'ACTIVE PLAN',
                              style: TextStyle(
                                color: AppColors.green,
                                fontFamily: CustomFonts.bold,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(24),
                        color: AppColors.white,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.05),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryDarkBlue.withOpacity(
                                    0.1,
                                  ),

                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.star,
                                  color: AppColors.primaryDarkBlue,
                                  size: 20,
                                ),
                              ),
                              SizedBox(height: 16),
                              // ટાઇટલ
                              Text(
                                'Monthly Subscription',
                                style: TextStyle(
                                  color: AppColors.primaryDarkBlue,
                                  fontSize: 17.sp,
                                  fontFamily: CustomFonts.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              // સબ-ટાઇટલ
                              Text(
                                'Full access to exclusive leads.',
                                style: TextStyle(
                                  color: AppColors.primaryDarkBlue,
                                  fontSize: 15.sp,
                                  fontFamily: CustomFonts.regular,
                                ),
                              ),
                              SizedBox(height: 0.5.h),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '£40',
                                    style: TextStyle(
                                      color: AppColors.primaryDarkBlue,
                                      fontSize: 20.sp,
                                      fontFamily: CustomFonts.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '/month',
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontFamily: CustomFonts.semiBold,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 2.h),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(24),
                        color: AppColors.white,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.05),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryDarkBlue.withOpacity(
                                    0.1,
                                  ),

                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.location_on,
                                  color: AppColors.primaryDarkBlue,
                                  size: 20,
                                ),
                              ),
                              SizedBox(height: 16),
                              // ટાઇટલ
                              Text(
                                'Coverage Area',
                                style: TextStyle(
                                  color: AppColors.primaryDarkBlue,
                                  fontSize: 17.sp,
                                  fontFamily: CustomFonts.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              // સબ-ટાઇટલ
                              Text(
                                'Select your target lead region.',
                                style: TextStyle(
                                  color: AppColors.primaryDarkBlue,
                                  fontSize: 15.sp,
                                  fontFamily: CustomFonts.regular,
                                ),
                              ),
                              SizedBox(height: 1.h),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SELECT POSTCODE',
                                    style: TextStyle(
                                      color: AppColors.primaryDarkBlue,
                                      fontSize: 17.sp,
                                      fontFamily: CustomFonts.bold,
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: () {
                                      print("Clicked");
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 6.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryDarkBlue,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20.sp,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      
                      Center(
                        child: CustomButton(
                            title: "RENEW SUBSCRIPTION",
                            onTap: (){},
                            width: 53.w
                        ),
                      ),
                      
                      SizedBox(height: 2.h),
                      Text(
                        'RECENT ACTIVITY',
                        style: TextStyle(
                          color: AppColors.primaryDarkBlue,
                          fontSize: 17.sp,
                          fontFamily: CustomFonts.bold,
                          letterSpacing: 1.2,
                        ),
                      ),

                      Column(
                        children: [
                          for (int i = 0; i < transactions.length; i++)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 1.h),
                              child: Material(
                                color: AppColors.white,
                                elevation: 3,
                                shadowColor: Colors.black12,
                                borderRadius: BorderRadius.circular(4.w),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(4.w),
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.all(3.5.w),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 5.5.h,
                                          width: 5.5.h,
                                          decoration: BoxDecoration(
                                            color: AppColors.grey.withOpacity(0.1),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            transactions[i]['isCredit']
                                                ? Icons.arrow_downward
                                                : Icons.arrow_upward,
                                            color: transactions[i]['isCredit']
                                                ? AppColors.green
                                                : AppColors.red,
                                            size: 20.sp,
                                          ),
                                        ),

                                        SizedBox(width: 3.w),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .account_balance_wallet,
                                                    size: 18.sp,
                                                    color: AppColors
                                                        .primaryDarkBlue,
                                                  ),
                                                  SizedBox(width: 1.w),
                                                  Text(
                                                    transactions[i]['title'],
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .primaryDarkBlue,
                                                      fontFamily:
                                                          CustomFonts.bold,
                                                      fontSize: 17.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 0.5.h),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    size: 18.sp,
                                                    color: AppColors
                                                        .primaryDarkBlue,
                                                  ),
                                                  SizedBox(width: 1.w),
                                                  Text(
                                                    transactions[i]['date'],
                                                    style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontSize: 15.sp,
                                                      fontFamily: CustomFonts.regular,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                       
                                        Text(
                                          transactions[i]['amount'],
                                          style: TextStyle(
                                            color: transactions[i]['isCredit']
                                                ? AppColors.green
                                                : AppColors.red,
                                            fontFamily: CustomFonts.bold,
                                            fontSize: 15.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 3.h),
                    ],
                  ).paddingSymmetric(horizontal: 4.w),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: -1),
    );
  }

  static List<Map<String, dynamic>> transactions = [
    {
      'title': 'Lead Unlock',
      'date': 'Oct 24, 2023 • #8291',
      'amount': '-£20.00',
      'isCredit': false,
    },
    {
      'title': 'Subscription',
      'date': 'Oct 12, 2023 • Auto-renew',
      'amount': '-£40.00',
      'isCredit': false,
    },
    {
      'title': 'Funds Added',
      'date': 'Oct 01, 2023 • Top-up',
      'amount': '+£100.00',
      'isCredit': true,
    },
  ];
}

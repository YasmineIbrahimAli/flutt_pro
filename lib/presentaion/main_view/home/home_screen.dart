import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../domain/widgets/build_brand_button.dart';
import '../../../domain/widgets/build_prouduct_card.dart';
import '../../../domain/widgets/custom_bottom_navigation.dart';
import '../../resources/assets_app.dart';
import '../../resources/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: CircleAvatar(
            radius: 45.r,
            backgroundColor: kBackgroundColorCircle,
            child: SvgPicture.asset(
              AssetData.menu,
              width: 25.w,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: CircleAvatar(
              radius: 45.r,
              backgroundColor: kBackgroundColorCircle,
              child: SvgPicture.asset(
                AssetData.lock,
                width: 25.w,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Text(
                "Hello",
                style: GoogleFonts.lato(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Welcome to Laza.",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Container(
                    width: 280.w,
                    height: 50.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: kBackgroundColorCircle,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AssetData.search,
                          width: 20.w,
                          height: 24.h,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Search...',
                          style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.h),
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff9775FA),
                    ),
                    child: SvgPicture.asset(
                      AssetData.voice,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Brand',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 50.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildBrandButton(AssetData.adidas, 'Adidas'),
                    buildBrandButton(AssetData.Nike, 'Nike'),
                    buildBrandButton(AssetData.Fila, 'Fila'),
                    buildBrandButton(AssetData.Puma, 'Puma'),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              CustomProductGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

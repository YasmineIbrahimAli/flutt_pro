import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildBrandButton(String assetName, String brandName) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0.w),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.grey[100],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: SvgPicture.asset(
                assetName,
                height: 15.h,
                width: 18.w,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              brandName,
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../presentaion/resources/assets_app.dart';

class CustomWidgetScreen2 extends StatelessWidget {
  const CustomWidgetScreen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          child: Image.asset(
            AssetData.img1,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 70.w,
          height: 70.h,
          child: Image.asset(
            AssetData.img2,
            width: 70.w,
            height: 70.h,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 70.w,
          height: 70.h,
          child: Image.asset(
            AssetData.img3,
            width: 70.w,
            height: 70.h,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 70.w,
          height: 70.h,
          child: Image.asset(
            AssetData.img4,
            width: 70.w,
            height: 70.h,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTwoBoutton extends StatelessWidget {
  const CustomTwoBoutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 70.h,
              width: 370.w,
              color: Color(0xff9775FA),
              child: Center(
                child: Text(
                  'Add to Card',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 70.h,
            width: 370.w,
            child: InkWell(
              onTap: () {},
              child: Container(
                color: Color(0xff9775FA),
                child: Center(
                  child: Text(
                    'Buy',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

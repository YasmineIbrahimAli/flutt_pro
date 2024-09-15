import 'package:flutter/material.dart';
import 'package:flutter_pro1/presentaion/main_view/wishlist/reviews_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistScreen extends StatefulWidget {
  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  double _currentSliderValue = 2.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              'Name',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type your name',
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'How was your experience ?',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Describe your experience?',
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Star',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            Slider(
              value: _currentSliderValue, // Use the slider value here
              min: 0.0,
              max: 5.0,
              divisions: 10,
              label: _currentSliderValue.toString(),
              activeColor: Color(0xff9775FA),
              inactiveColor: Colors.grey.shade300,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value; // Update the value on change
                });
              },
            ),
            SizedBox(height: 20.h),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50.h),
                backgroundColor: Color(0xff9775FA),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReviewsScreen(),
                  ),
                );
              },
              child: Text(
                'Submit Review',
                style: TextStyle(fontSize: 16.sp, color: Colors.white),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindset_final_project/presentaion/resources/assets_app.dart';
import '../../../domain/data/gride_view_model.dart';
import '../../../domain/widgets/custom_card_screen2.dart';
import '../../../domain/widgets/custom_text_rich.dart';
import '../../../domain/widgets/custom_two_bottom.dart';

class ProductDetailScreen extends StatelessWidget {
  final GridViewModel item;

  const ProductDetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildImageSection(context),
          const Text(
            'Size',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 17),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                    child: Text(
                  'S',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                    child: Text(
                  'M',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                    child: Text(
                  'L',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                    child: Text(
                  'XL',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                    child: Text(
                  '2XL',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  _buildTitleSection(),
                  SizedBox(height: 10.h),
                  const CustomWidgetScreen2(),
                  SizedBox(height: 10.h),
                  _buildDescriptionSection(),
                  _buildReviewSection(),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
          const CustomTwoBoutton(),
        ],
      ),
    );
  }

  Widget _buildImageSection(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          item.imageUrl,
          height: 380.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 40.h,
          left: 16.w,
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.8),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        Positioned(
          top: 40.h,
          right: 16.w,
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.8),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Mens Printed Pullover Hoodie',
          style: TextStyle(fontSize: 10, color: Color(0xff8F959E)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.description,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$${item.price}',
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 10.h),
        CustomTextrich(),
      ],
    );
  }

  Widget _buildReviewSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reviews",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "View All",
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8F959E)),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(AssetData.img1),
              radius: 20.w,
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ronald Richards',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2.h),
                Text(
                  '13 Sep, 2020',
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  '4.8',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.w),
                Icon(Icons.star, color: Colors.orange, size: 16.w),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
          style: TextStyle(fontSize: 12.sp, color: Colors.grey),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Price',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$125',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Text(
          'with VAT, SD',
          style: TextStyle(fontSize: 12.sp, color: Colors.grey),
        ),
      ],
    );
  }
}

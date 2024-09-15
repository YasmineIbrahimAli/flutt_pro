import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../presentaion/main_view/home/proudect_details_screen.dart';
import '../../presentaion/resources/assets_app.dart';
import '../data/gride_view_model.dart';

class CustomProductGrid extends StatefulWidget {
  CustomProductGrid({Key? key}) : super(key: key);

  @override
  State<CustomProductGrid> createState() => _CustomProductGridState();
}

class _CustomProductGridState extends State<CustomProductGrid> {
  final List<GridViewModel> gridItems = [
    GridViewModel(
      imageUrl: AssetData.proudect1,
      description: 'Nike Sportswear Club Fleece',
      price: '\$99',
      isFavorite: false,
    ),
    GridViewModel(
      imageUrl: AssetData.proudect2,
      description: 'Trail Running Jacket Nike ',
      price: '\$99',
      isFavorite: false,
    ),
    GridViewModel(
      imageUrl: AssetData.proudect3,
      description: 'Training Top Nike Sport Clash',
      price: '\$99',
      isFavorite: false,
    ),
    GridViewModel(
      imageUrl: AssetData.proudect4,
      description: 'Trail Running Jacket Nike ',
      price: '\$99',
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.7,
      ),
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        final item = gridItems[index];
        return GestureDetector(
          onTap: () {
            setState(() {
              item.isFavorite = !item.isFavorite;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(item: item),
              ),
            );
          },
          child: Card(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 160.h,
                        width: 130.w,
                        child: Image.asset(item.imageUrl, fit: BoxFit.fill),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        item.description,
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        item.price,
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -5.0,
                  right: 5.0,
                  child: IconButton(
                    icon: Icon(
                      item.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: item.isFavorite ? Colors.red : Colors.grey,
                      size: 24.0,
                    ),
                    onPressed: () {
                      setState(() {
                        item.isFavorite = !item.isFavorite;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

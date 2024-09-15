import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/data/gride_view_model.dart';
import '../../resources/assets_app.dart';
import 'reviews_screen.dart';

class WishlistScreen extends StatefulWidget {
  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  double _currentSliderValue = 2.5;

  final List<GridViewModel> favoriteItems = [];

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
            _buildCustomTextField('Name', 'Type your name'),
            SizedBox(height: 20.h),
            _buildCustomTextField(
                'How was your experience?', 'Describe your experience?',
                maxLines: 5),
            SizedBox(height: 20.h),
            _buildStarRating(),
            Spacer(),
            _buildSubmitButton(),
            SizedBox(height: 20.h),
            Expanded(
              child: CustomProductGrid(
                onFavoriteToggle: (GridViewModel item) {
                  setState(() {
                    if (item.isFavorite) {
                      favoriteItems.add(item);
                    } else {
                      favoriteItems.remove(item);
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTextField(String label, String hint, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10.h),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.grey.shade100,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStarRating() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Star',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        Slider(
          value: _currentSliderValue,
          min: 0.0,
          max: 5.0,
          divisions: 10,
          label: _currentSliderValue.toString(),
          activeColor: Color(0xff9775FA),
          inactiveColor: Colors.grey.shade300,
          onChanged: (value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
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
    );
  }
}

class CustomProductGrid extends StatefulWidget {
  final Function(GridViewModel) onFavoriteToggle;

  CustomProductGrid({Key? key, required this.onFavoriteToggle})
      : super(key: key);

  @override
  State<CustomProductGrid> createState() => _CustomProductGridState();
}

class _CustomProductGridState extends State<CustomProductGrid> {
  final List<GridViewModel> gridItems = [
    GridViewModel(
      imageUrl: AssetData.proudect1,
      description: 'Nike Sportswear Club Fleece',
      price: '\$99',
      isFavorite: true,
    ),
    GridViewModel(
      imageUrl: AssetData.proudect2,
      description: 'Trail Running Jacket Nike',
      price: '\$99',
      isFavorite: true,
    ),
    GridViewModel(
      imageUrl: AssetData.proudect3,
      description: 'Training Top Nike Sport Clash',
      price: '\$99',
      isFavorite: true,
    ),
    GridViewModel(
      imageUrl: AssetData.proudect4,
      description: 'Trail Running Jacket Nike',
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
            widget.onFavoriteToggle(item);
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
                      widget.onFavoriteToggle(item);
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

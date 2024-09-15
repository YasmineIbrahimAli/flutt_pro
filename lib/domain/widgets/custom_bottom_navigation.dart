import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go('/homeView');
        break;
      case 1:
        context.go('/wishlist');
        break;
      case 2:
        context.go('/cart');
        break;
      case 3:
        context.go('/wallet');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xff9775FA),
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _selectedIndex == 0 ? Color(0xff9775FA) : Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _selectedIndex == 1
                ? Icons.favorite
                : Icons.favorite_border, 
            color: _selectedIndex == 1 ? Color(0xff9775FA) : Colors.grey,
          ),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: _selectedIndex == 2 ? Color(0xff9775FA) : Colors.grey,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.wallet,
            color: _selectedIndex == 3 ? Color(0xff9775FA) : Colors.grey,
          ),
          label: 'Wallet',
        ),
      ],
    );
  }
}

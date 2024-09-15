// import 'package:flutter_pro1/presentaion/resources/assets_app.dart';
// import 'package:go_router/go_router.dart';
// import '../../domain/data/gride_view_model.dart';
// import '../main_view/home/home_screen.dart';
// import '../main_view/home/proudect_details_screen.dart';
// import '../main_view/wishlist/my_wishlist_screen.dart';

// abstract class AppRouter {
//   static const kHomeView = '/homeView';
//   static const kWishlist = '/wishlist';
//   static const kProductDetail = '/productDetail';

//   static final router = GoRouter(
//     routes: [
//       GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
//       GoRoute(
//         path: kProductDetail,
//         builder: (context, state) {
//           final item = state.extra as GridViewModel;
//           return ProductDetailScreen(item: item);
//         },
//       ),
//       GoRoute(
//         path: kWishlist,
//         builder: (context, state) {
//           return WishlistPage(
//             favoriteItems: [
//               GridViewModel(
//                 imageUrl: AssetData.proudect1,
//                 description: 'Nike Sportswear Club Fleece',
//                 price: '\$99',
//                 isFavorite: true,
//               ),
//               GridViewModel(
//                 imageUrl: AssetData.proudect2,
//                 description: 'Trail Running Jacket Nike',
//                 price: '\$99',
//                 isFavorite: true,
//               ),
//             ],
//           );
//         },
//       ),
//     ],
//   );
// }

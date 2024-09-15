class GridViewModel {
  final String imageUrl;
  final String description;
  final String price;
  bool isFavorite;

  GridViewModel({
    required this.imageUrl,
    required this.description,
    required this.price,
    this.isFavorite = false,
  });
}

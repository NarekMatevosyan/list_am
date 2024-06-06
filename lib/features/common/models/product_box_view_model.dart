class ProductBoxViewModel {
  final int id;
  final String image;
  final String price;
  final String description;
  bool isFavorite;

  ProductBoxViewModel(
      {required this.id,
      required this.image,
      required this.price,
      required this.description,
      required this.isFavorite});
}

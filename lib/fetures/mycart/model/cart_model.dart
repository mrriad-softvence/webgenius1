class CartItem {
  final String image;
  final String name;
  final String description;
  final String dish;
  final double rating;
  final int price;
  int quantity;

  CartItem({
    required this.image,
    required this.name,
    required this.description,
    required this.dish,
    required this.rating,
    required this.price,
    this.quantity = 1,
  });
}

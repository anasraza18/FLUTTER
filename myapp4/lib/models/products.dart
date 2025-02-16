class Product {
  final String name;
  final String image;
  final double price;
  final String description;

  var id;

  Product(
      {required this.name,
      required this.price,
      required this.description,
      required this.image});
}

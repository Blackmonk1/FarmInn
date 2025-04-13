
class ProductsForYou {
  final String title, price, image, category;

  ProductsForYou(
      {required this.image,
      required this.title,
      required this.price,
      required this.category});
}

List demoProductsForYou = [
  ProductsForYou(
    image: "assets/images/product4.png",
    title: "Lemon",
    price: "30 Cedis",
    category: "Fruit",
  ),
  ProductsForYou(
    image: "assets/images/product5.png",
    title: "Banana",
    price: "15 Cedis",
    category: "Fruit",
  ),
];

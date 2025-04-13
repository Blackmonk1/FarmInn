
class CartProducts {
  final String title, price, image, category;

  CartProducts(
      {required this.image,
      required this.title,
      required this.price,
      required this.category});
}

List demoCartProducts = [
  CartProducts(
    image: "assets/images/product1.png",
    title: "Fig",
    price: "25 Cedis",
    category: "Fruit",
  ),
  CartProducts(
    image: "assets/images/product2.png",
    title: "Red Apple",
    price: "30 Cedis",
    category: "Fruit",
  ),
 
  CartProducts(
    image: "assets/images/product4.png",
    title: "Lemon",
    price: "30 Cedis",
    category: "Fruit",
  ),
  CartProducts(
    image: "assets/images/product5.png",
    title: "Banana",
    price: "15 Cedis",
    category: "Fruit",
  ),
];

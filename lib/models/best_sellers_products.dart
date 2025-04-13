
class BestSellesProducts {
  final String title, price, image, category;

  BestSellesProducts(
      {required this.image,
      required this.title,
      required this.price,
      required this.category});
}

List demoBestSellesProducts = [
  BestSellesProducts(
    image: "assets/images/product1.png",
    title: "Fig",
    price: "25 Cedis",
    category: "Fruit",
  ),
  BestSellesProducts(
    image: "assets/images/product2.png",
    title: "Red Apples",
    price: "30 Cedis",
    category: "Fruit",
  ),

];

import 'package:flutter/widgets.dart';

class Food {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Food(
      {required this.name,
      required this.description,
      required this.price,
      required this.imageUrl});
}

final List<Food> foodData = [
  Food(
    name: "Biriyani",
    description:
        "A traditional Bangladeshi dish made with rice and meat or vegetables, often served with yogurt or raita.",
    price: 250,
    imageUrl: "https://images.unsplash.com/photo-1630409346824-4f0e7b080087?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=946&q=80",
  ),
  Food(
    name: "Fish Curry",
    description:
        "A traditional Bangladeshi dish made with fish and spices, often served with rice.",
    price: 200,
    imageUrl: "https://images.unsplash.com/photo-1620894580123-466ad3a0ca06?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
  ),
  Food(
    name: "Kachchi Biryani",
    description:
        "A traditional Bangladeshi dish made with meat, rice, and spices, cooked in a sealed pot.",
    price: 250,
    imageUrl: "https://c.ndtvimg.com/2019-06/s71ihu9_biryani_625x300_05_June_19.jpg",
  ),
  Food(
    name: "Dal",
    description:
        "A traditional Bangladeshi dish made with lentils and spices, often served with rice.",
    price: 100,
    imageUrl: "https://shwetainthekitchen.com/wp-content/uploads/2021/12/Dal-Fry-Recipe.jpg",
  ),
];

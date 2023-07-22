// To parse this JSON data, do
//
//     final cart = cartFromJson(jsonString);

import 'dart:convert';

List<Cart> cartFromJson(String str) => List<Cart>.from(json.decode(str).map((x) => Cart.fromJson(x)));

String cartToJson(List<Cart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cart {
  String name;
  String desc;
  String price;
  String image;
  bool addCart;
  int counter;

  Cart({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.addCart,
    required this. counter,

  });

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
    name: json["name"],
    desc: json["desc"],
    price: json["price"],
    image: json["image"],
    addCart: json["add_cart"],
    counter: json["counter"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "desc": desc,
    "price": price,
    "image": image,
    "add_cart": addCart,
    "counter":counter,
  };
}

List<Cart> cart=[

];
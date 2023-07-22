// To parse this JSON data, do
//
//     final beverages = beveragesFromJson(jsonString);

import 'dart:convert';

List<Beverages> beveragesFromJson(String str) => List<Beverages>.from(json.decode(str).map((x) => Beverages.fromJson(x)));

String beveragesToJson(List<Beverages> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Beverages {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  Beverages({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Beverages.fromJson(Map<String, dynamic> json) => Beverages(
    name: json["name"],
    desc: json["desc"],
    price: json["price"],
    image: json["image"],
    favourite: json["favourite"],
    addCart: json["add_cart"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "desc": desc,
    "price": price,
    "image": image,
    "favourite": favourite,
    "add_cart": addCart,
  };
}
List<Beverages> beverages=[
  Beverages(name: 'Tree jop', image: 'assets/images/beverages/b1.png', desc: '500ml', price: '100', favourite: true,addCart: true),

  Beverages(name: 'Tree jop', image: 'assets/images/beverages/b2.png', desc: '500ml', price: '100', favourite: true,addCart: true),
 //Beverages(name: 'Noodles', image: 'assets/images/beverages/b3.png', desc: '200ml', price: price),
  Beverages(name: 'Brahma', image: 'assets/images/beverages/b4.png', desc: '200ml', price: '45', favourite: true,addCart: true),
  Beverages(name: 'Cocacola', image: 'assets/images/beverages/b8.png', desc: '200ml', price: '45', favourite: true,addCart: true),
  Beverages(name: 'Sprite', image: 'assets/images/beverages/b9.png', desc: '200ml', price: '45', favourite: true,addCart: true),
  Beverages(name: 'Monster', image: 'assets/images/beverages/b7.png', desc: '200ml', price: '45', favourite: true,addCart: true),
  Beverages(name: 'Coke', image: 'assets/images/beverages/b10.png', desc: '200ml', price: '45', favourite: true,addCart: true),
  Beverages(name: 'Pepsi', image: 'assets/images/beverages/b11.png', desc: '200ml', price: '45', favourite: true,addCart: true),




];
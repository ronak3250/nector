// To parse this JSON data, do
//
//     final dairy = dairyFromJson(jsonString);

import 'dart:convert';

List<Dairy> dairyFromJson(String str) => List<Dairy>.from(json.decode(str).map((x) => Dairy.fromJson(x)));

String dairyToJson(List<Dairy> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Dairy {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  Dairy({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Dairy.fromJson(Map<String, dynamic> json) => Dairy(
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

List<Dairy> dairy=
    [
      Dairy(name: 'Aryan', image: 'assets/images/dairy/d1.png', desc: '250ml', price: '70',favourite: true,addCart: true),

      Dairy(name: 'Amul ButterMilk', image: 'assets/images/dairy/d2.png', desc: '80gm', price: '45',favourite: true,addCart: true),

      Dairy(name: 'Amul Milk', image: 'assets/images/dairy/d3.png', desc: '500Gm', price: '30',favourite: true,addCart: true),

      Dairy(name: 'Milk', image: 'assets/images/dairy/d4.png', desc: '1ltr', price: '20',favourite: true,addCart: true),

      Dairy(name: 'Kenyao', image: 'assets/images/dairy/d5.png', desc: '1ltr', price: '50',favourite: true,addCart: true),

      Dairy(name: 'Egg', image: 'assets/images/dairy/d6.png', desc: '12 piece', price: '30',favourite: true,addCart: true),
      Dairy(name: 'Egg bowl', image: 'assets/images/dairy/d7.png', desc: '6 piece', price: '140',favourite: true,addCart: true),

      Dairy(name: 'Egg snack', image: 'assets/images/dairy/d8.png', desc: '100gm', price: '260',favourite: true,addCart: true),
      Dairy(name: 'Egg noodles', image: 'assets/images/dairy/d9.png', desc: '100gm', price: '75',favourite: true,addCart: true),
      Dairy(name: 'Mynochies', image: 'assets/images/dairy/d10.png', desc: '250gm', price: '100',favourite: true,addCart: true),

    ];
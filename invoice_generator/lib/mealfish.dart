// To parse this JSON data, do
//
//     final meatfish = meatfishFromJson(jsonString);

import 'dart:convert';

List<Meatfish> meatfishFromJson(String str) => List<Meatfish>.from(json.decode(str).map((x) => Meatfish.fromJson(x)));

String meatfishToJson(List<Meatfish> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Meatfish {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  Meatfish({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Meatfish.fromJson(Map<String, dynamic> json) => Meatfish(
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

List<Meatfish> meatfish=[
  Meatfish(name: 'sea Fish', image: 'assets/images/fish/f1.png', desc: '1kg', price: '100',favourite: true,addCart: true),

  Meatfish(name: 'river Fish', image: 'assets/images/fish/f2.png', desc: '1kg', price: '200',favourite: true,addCart: true),

  Meatfish(name: 'Tamil Fish', image: 'assets/images/fish/f3.png', desc: '500gm', price: '150',favourite: true,addCart: true),

  Meatfish(name: 'Mix Fish', image: 'assets/images/fish/f4.png', desc: '250gm', price: '50',favourite: true,addCart: true),

  Meatfish(name: 'Meat', image: 'assets/images/fish/f5.png', desc: '1kg', price: '125',favourite: true,addCart: true),

  Meatfish(name: 'Meat', image: 'assets/images/fish/f6.png', desc: '500gm', price: '340',favourite: true,addCart: true),

  Meatfish(name: 'Meat', image: 'assets/images/fish/f7.png', desc: '100gm', price: '140',favourite: true,addCart: true),

  Meatfish(name: 'Meat', image: 'assets/images/fish/f8.png', desc: '350gm', price: '240',favourite: true,addCart: true),

  Meatfish(name: 'Meat', image: 'assets/images/fish/f9.png', desc: '1kg', price: '350',favourite: true,addCart: true),
];
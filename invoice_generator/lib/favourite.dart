// To parse this JSON data, do
//
//     final favourite = favouriteFromJson(jsonString);

import 'dart:convert';

List<Favourite> favouriteFromJson(String str) => List<Favourite>.from(json.decode(str).map((x) => Favourite.fromJson(x)));

String favouriteToJson(List<Favourite> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Favourite {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  Favourite({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Favourite.fromJson(Map<String, dynamic> json) => Favourite(
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

List<Favourite> favourite=[];
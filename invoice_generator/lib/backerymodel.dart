// To parse this JSON data, do
//
//     final backery = backeryFromJson(jsonString);

import 'dart:convert';

List<Backery> backeryFromJson(String str) =>
    List<Backery>.from(json.decode(str).map((x) => Backery.fromJson(x)));

String backeryToJson(List<Backery> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Backery {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  Backery({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Backery.fromJson(Map<String, dynamic> json) => Backery(
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

List<Backery> backery = [
  Backery(favourite: true,addCart: true,
      name: "Cheetos",
      image: "assets/images/snack/s1.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Lays",
      image: "assets/images/snack/s2.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Doritos",
      image: "assets/images/snack/s3.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Cheetos",
      image: "assets/images/snack/s4.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Lays",
      image: "assets/images/snack/s5.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Lays",
      image: "assets/images/snack/s6.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Pringles",
      image: "assets/images/snack/s7.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Lays",
      image: "assets/images/snack/s8.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Cheetos",
      image: "assets/images/snack/s9.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Chetos",
      image: "assets/images/snack/s10.png",
      desc: "35G",
      price: "35"),
  Backery(favourite: true,addCart: true,
      name: "Bread",
      image: "assets/images/snack/s11.png",
      desc: "100G",
      price: "135"),
  Backery(favourite: true,addCart: true,
      name: "Bread",
      image: "assets/images/snack/s12.png",
      desc: "200G",
      price: "270"),
  Backery(favourite: true,addCart: true,
      name: "Curchy Bread",
      image: "assets/images/snack/s13.png",
      desc: "150G",
      price: "100"),
  Backery(favourite: true,addCart: true,
      name: "Buiscuit",
      image: "assets/images/snack/s14.png",
      desc: "500G",
      price: "50"),
  Backery(favourite: true,addCart: true,
      name: "Buns",
      image: "assets/images/snack/s15.png",
      desc: "250G",
      price: "100"),
];

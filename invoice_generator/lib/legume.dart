// To parse this JSON data, do
//
//     final legume = legumeFromJson(jsonString);

import 'dart:convert';

List<Legume> legumeFromJson(String str) => List<Legume>.from(json.decode(str).map((x) => Legume.fromJson(x)));

String legumeToJson(List<Legume> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Legume {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  Legume({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Legume.fromJson(Map<String, dynamic> json) => Legume(
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

List<Legume> legume=[
  Legume(name: "Peanut", desc: "500Gm", price: "110", image: 'assets/images/legume/p1.png',favourite: true,addCart: true),

  Legume(name: "Lentils", desc: "500Gm", price: "150", image: 'assets/images/legume/p2.png',favourite: true,addCart: true),
  Legume(name: "Mung", desc: "500Gm", price: "170", image: 'assets/images/legume/p3.png',favourite: true,addCart: true),
  Legume(name: "Split", desc: "1Kg", price: "350", image: 'assets/images/legume/p4.png',favourite: true,addCart: true),
  Legume(name: "Sprouting Seeds", desc: "1Kg", price: "100", image: 'assets/images/legume/p5.png',favourite: true,addCart: true),
  Legume(name: "Adzuki Beans", desc: "500Gm", price: "200", image: 'assets/images/legume/p7.png',favourite: true,addCart: true),
  Legume(name: "Pulses Aguaguash", desc: "500Gm", price: "50", image: 'assets/images/legume/p8.png',favourite: true,addCart: true),







];
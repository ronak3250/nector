// To parse this JSON data, do
//
//     final vegetable = vegetableFromJson(jsonString);

import 'dart:convert';

List<Vegetable> vegetableFromJson(String str) => List<Vegetable>.from(json.decode(str).map((x) => Vegetable.fromJson(x)));

String vegetableToJson(List<Vegetable> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Vegetable {
  String name;
  String desc;
  String price;
  String image;
  bool favourite=false;
  bool addCart=false;

  Vegetable({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Vegetable.fromJson(Map<String, dynamic> json) => Vegetable(
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

List<Vegetable> vegetable=[
 Vegetable(name: "Capsicum", desc: "100Gm", price: "30", image: 'assets/images/vegetable/vg1.png'

     ,favourite: true,addCart: true),

  Vegetable(name: "Potato", desc: "1kg", price: "45", image: 'assets/images/vegetable/vg2.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "Tomato", desc: "1 piece", price: "100", image: 'assets/images/vegetable/vg3.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "Onion", desc: "1Kg", price: "60", image: 'assets/images/vegetable/vg4.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "Garlic", desc: "250Gm", price: "80", image: 'assets/images/vegetable/vg5.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "Green Onion", desc: "500gm", price: "60", image: 'assets/images/vegetable/vg6.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "peas", desc: "500gm", price: "120", image: 'assets/images/vegetable/vg7.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "Brinjal", desc: "500gm", price: "50", image: 'assets/images/vegetable/vg8.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "Lemon", desc: "500gm", price: "70", image: 'assets/images/vegetable/vg9.png'

      ,favourite: true,addCart: true),

  Vegetable(name: "Beatroon", desc: "500gm", price: "160", image: 'assets/images/vegetable/vg11.png'

      ,favourite: true,addCart: true),
  Vegetable(name: "Cabbage", desc: "500gm", price: "20", image: 'assets/images/vegetable/vg12.png'

      ,favourite: true,addCart: true),
  Vegetable(name: "Broccoli", desc: "100gm", price: "150", image: 'assets/images/vegetable/vg13.png'

      ,favourite: true,addCart: true),
  Vegetable(name: "Bitter gourd", desc: "500gm", price: "40", image: 'assets/images/vegetable/vg14.png'

      ,favourite: true,addCart: true),
];
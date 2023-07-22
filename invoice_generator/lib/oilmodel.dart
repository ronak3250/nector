// To parse this JSON data, do
//
//     final oil = oilFromJson(jsonString);

import 'dart:convert';

List<Oil> oilFromJson(String str) => List<Oil>.from(json.decode(str).map((x) => Oil.fromJson(x)));

String oilToJson(List<Oil> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Oil {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  Oil({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory Oil.fromJson(Map<String, dynamic> json) => Oil(
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

List<Oil> oil=[
  Oil(name: 'Jasmin Oil', image: 'assets/images/oil/o1.png', desc: '1Ltr', price: "340"

      ,favourite: true,addCart: true),

  Oil(name: 'Sunflower Oil', image: 'assets/images/oil/o2.png', desc: '5Ltr', price: "670"

      ,favourite: true,addCart: true),

  Oil(name: 'Nature Oil', image: 'assets/images/oil/o3.png', desc: '1Ltr', price: "650"

      ,favourite: true,addCart: true),

  Oil(name: 'Cotton Oil', image: 'assets/images/oil/o4.png', desc: '5Ltr', price: "740"

      ,favourite: true,addCart: true),

  Oil(name: 'Vegetable Oil', image: 'assets/images/oil/o5.png', desc: '5Ltr', price: "740"

      ,favourite: true,addCart: true),

  Oil(name: 'Om Oil', image: 'assets/images/oil/o6.png', desc: '5Ltr', price: "580"

      ,favourite: true,addCart: true),

  Oil(name: 'Patanjali oil', image: 'assets/images/oil/o7.png', desc: '5Ltr', price: "480"

      ,favourite: true,addCart: true),
  Oil(name: 'Fortune Oil', image: 'assets/images/oil/o8.png', desc: '5Ltr', price: "240"

      ,favourite: true,addCart: true),

  Oil(name: 'Gold winner', image: 'assets/images/oil/o10.png', desc: '5Ltr', price: "680"

      ,favourite: true,addCart: true),

  Oil(name: 'Fortune + oil', image: 'assets/images/oil/o9.png', desc: '5Ltr', price: "780"

      ,favourite: true,addCart: true),

  Oil(name: 'sol Ghee', image: 'assets/images/oil/o11.png', desc: '1Ltr', price: "480"

      ,favourite: true,addCart: true),

  Oil(name: 'Patanjali Ghee', image: 'assets/images/oil/o12.png', desc: '5Ltr', price: "480"

      ,favourite: true,addCart: true),

  Oil(name: 'Dhara oil', image: 'assets/images/oil/o13.png', desc: '5Ltr', price: "340"

      ,favourite: true,addCart: true),

  Oil(name: 'Afiat oil', image: 'assets/images/oil/o14.png', desc: '5Ltr', price: "410"

      ,favourite: true,addCart: true),


];
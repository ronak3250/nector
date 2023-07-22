import 'dart:convert';

List<FruitesModel> fruitesModelFromJson(String str) => List<FruitesModel>.from(json.decode(str).map((x) => FruitesModel.fromJson(x)));

String fruitesModelToJson(List<FruitesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FruitesModel {
  String name;
  String desc;
  String price;
  String image;
  bool favourite;
  bool addCart;

  FruitesModel({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.favourite,
    required this.addCart,
  });

  factory FruitesModel.fromJson(Map<String, dynamic> json) => FruitesModel(
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


List<FruitesModel> fruits = [
  FruitesModel(name:"Pineapple" ,desc: "1Kg",price: "240",image: "assets/images/fruits/fruits1.png", favourite: true,addCart: true),
  FruitesModel(name: "Strawberry", desc: "6 piece", price: "100",image: "assets/images/fruits/fruits2.png", favourite: true,addCart: true),
  FruitesModel(name:"Green Apple",desc: "500Gm",price: "120",image: "assets/images/fruits/fruits3.png",favourite: true,addCart: true ),
  FruitesModel(name:"Orange", desc: "1Kg",price: "260", image: "assets/images/fruits/fruits4.png",favourite: true, addCart: true),
  FruitesModel(name:"Apple", desc: "1Kg", price: "170", image: "assets/images/fruits/fruits5.png",favourite: true, addCart: true),
  FruitesModel(name:"Mango",desc: "1Kg",price: "190",image: "assets/images/fruits/fruits6.png",favourite: true,addCart: true ),
  FruitesModel(name:"Pomegranate", desc: "1Kg", price: "180",image: "assets/images/fruits/fruits7.png",favourite: true,addCart: true ),
  FruitesModel(name:"Hass avocado", desc: "1Kg",price: "540", image: "assets/images/fruits/fruits8.png",favourite: true,addCart: true ),
  FruitesModel(name:"Cherry",desc: "200gm",price: "240",image: "assets/images/fruits/fruits9.png", favourite: true,addCart: true),
  FruitesModel(name:"Blueberry",   desc: "250gm",price: "100", image: "assets/images/fruits/fruits10.png", favourite: true,addCart: true ),
];

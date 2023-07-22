import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/favourite.dart';
import 'package:invoice_generator/legume.dart';
import 'package:invoice_generator/loginscreen.dart';
import 'package:invoice_generator/pdfpreview.dart';
import 'package:invoice_generator/profilescreen.dart';
import 'package:invoice_generator/singleFruitItem.dart';
import 'package:invoice_generator/vegatable.dart';

import 'Gridviewscreen.dart';
import 'cartmodel.dart';
import 'fruitmodel.dart';
import 'jsonfile.dart';

class Itemscreen extends StatefulWidget {
  const Itemscreen({super.key});

  @override
  State<Itemscreen> createState() => _ItemscreenState();
}

int image = 1;
bool valuecheck1 = true;
bool valuecheck2 = false;
bool valuecheck3 = false;
bool valuecheck4 = false;
bool valuecheck5 = false;
int index = 0;

class _ItemscreenState extends State<Itemscreen> {
  // @override
  // void initState() {
  //   getvalue();
  //   // TODO: implement initState
  //   super.initState();
  // }
  //
  // getvalue() {
  //   Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       image != 3 ? image++ : image = 1;
  //     });
  //     getvalue();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          border: Border.all(width: 1, color: Colors.black45),
        ),
        // margin: EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                        valuecheck1 = true;
                        valuecheck2 = false;
                        valuecheck3 = false;
                        valuecheck4 = false;
                        valuecheck5 = false;
                      });
                    },
                    icon: valuecheck1
                        ? Icon(
                            Icons.shopping_basket_outlined,
                            size: 30,
                            color: Color(0xff53B175),
                          )
                        : Icon(
                            Icons.shopping_basket,
                            size: 30,
                            color: Color(0xff53B175),
                          )),
                Text(
                  "Shop",
                  style: GoogleFonts.inter(
                      fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                        valuecheck1 = false;
                        valuecheck2 = true;
                        valuecheck3 = false;
                        valuecheck4 = false;
                        valuecheck5 = false;
                      });
                    },
                    icon: valuecheck2
                        ? Icon(
                            Icons.favorite_border,
                            size: 30,
                            color: Color(0xff53B175),
                          )
                        : Icon(
                            Icons.favorite,
                            size: 30,
                            color: Color(0xff53B175),
                          )),
                Text(
                  "Favorite",
                  style: GoogleFonts.inter(
                      fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        index = 2;
                        valuecheck1 = false;
                        valuecheck2 = false;
                        valuecheck3 = true;
                        valuecheck4 = false;
                        valuecheck5 = false;
                      });
                    },
                    icon: valuecheck3
                        ? Icon(
                            Icons.shopping_bag_outlined,
                            size: 30,
                            color: Color(0xff53B175),
                          )
                        : Icon(
                            Icons.shopping_bag,
                            size: 30,
                            color: Color(0xff53B175),
                          )),
                Text(
                  "Cart",
                  style: GoogleFonts.inter(
                      fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        index = 3;
                        valuecheck1 = false;
                        valuecheck2 = false;
                        valuecheck3 = false;
                        valuecheck4 = true;
                        valuecheck5 = false;
                      });
                    },
                    icon: valuecheck4
                        ? Icon(
                            Icons.travel_explore,
                            size: 30,
                            color: Color(0xff53B175),
                          )
                        : Icon(
                            Icons.search,
                            size: 30,
                            color: Color(0xff53B175),
                          )),
                Text(
                  "Explore",
                  style: GoogleFonts.inter(
                      fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      index = 4;
                      valuecheck1 = false;
                      valuecheck2 = false;
                      valuecheck3 = false;
                      valuecheck4 = false;
                      valuecheck5 = true;
                    });
                  },
                  icon: valuecheck5
                      ? Icon(
                          Icons.account_circle_outlined,
                          size: 30,
                          color: Color(0xff53B175),
                        )
                      : Icon(
                          Icons.account_circle,
                          size: 30,
                          color: Color(0xff53B175),
                        )),
              Text(
                "Account",
                style: GoogleFonts.inter(
                    fontSize: 10, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ]),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 80, top: 10),
        child: IndexedStack(index: index, children: [
          homescreen(),
          favouritegrid(),
          cartgrid(),
          explorescreen(),
          profile(),
        ]),
      ),
    ));
  }

  homescreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/loginicon.png',
                height: 50,
                width: 50,
              ),
              Text(
                'nector',
                style: GoogleFonts.inter(
                    color: Color(0xff53B175),
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cartgrid()),
                    );
                  },
                  icon: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Color(0xff53B175),
                    size: 30,
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/${image}.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Exclusive Offer",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Gridscreen()),
                  );
                },
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(
                      color: Color(0xff53B175),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView.separated(
              itemCount: fruits.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SingleFruitItem(
                  imageUrl: fruits[index].image,
                  name: fruits[index].name,
                  desc: fruits[index].desc,
                  price: fruits[index].price,
                  valueIndex: index,
                  cartValue: fruits[index].addCart,
                  favouriteValue: fruits[index].favourite,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Best Selling",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => vegetableGridview()),
                  );
                },
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(
                      color: Color(0xff53B175),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SingleFruitItem(
                    imageUrl: vegetable[index].image,
                    name: vegetable[index].name,
                    desc: vegetable[index].desc,
                    price: vegetable[index].price,
                    valueIndex: index,
                    cartValue: vegetable[index].addCart,
                    favouriteValue: vegetable[index].favourite,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemCount: vegetable.length),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Groceries",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LegumeGridScreen()),
                  );
                },
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(
                      color: Color(0xff53B175),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          legume[index].image,
                          height: 75,
                          width: 75,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          legume[index].name,
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    width: 250,
                    height: 200,
                    decoration: BoxDecoration(
                      color:
                          Color(Random().nextInt(0xffffffff)).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black26, width: 1),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemCount: legume.length),
          ),
        ],
      ),
    );
  }
}

class favouritegrid extends StatefulWidget {
  const favouritegrid({super.key});

  @override
  State<favouritegrid> createState() => _favouritegridState();
}

class _favouritegridState extends State<favouritegrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return favouritecounter(
              image: favourite[index].image,
              name: favourite[index].name,
              desc: favourite[index].desc,
              price: favourite[index].price,
              indexValue: index,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: favourite.length),
    ));
  }
}

class cartgrid extends StatefulWidget {
  const cartgrid({super.key});

  @override
  State<cartgrid> createState() => _cartgridState();
}

class _cartgridState extends State<cartgrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PdfPreviewPage()),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return cartcontainer(
              image: cart[index].image,
              name: cart[index].name,
              desc: cart[index].desc,
              counter: cart[index].counter,
              price: cart[index].price,
              indexValue: index,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: cart.length),
    ));
  }
}

class favouritecounter extends StatefulWidget {
  final String name;
  final String desc;
  final String image;
  final String price;
  final int indexValue;

  favouritecounter(
      {super.key,
      required this.name,
      required this.desc,
      required this.image,
      required this.price,
      required this.indexValue});

  @override
  State<favouritecounter> createState() => _favouritecounterState();
}

class _favouritecounterState extends State<favouritecounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(width: 1),
      ),
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(8),
              child: Image(
                image: AssetImage(
                  widget.image,
                ),
                height: 100,
                width: 100,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //  Text(widget.desc,style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w300,),),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    favourite.removeAt(widget.indexValue);
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  size: 35,
                ),
              ),

              //  Text("${int.parse(widget.price) *widget.counter}/-",style: GoogleFonts.inter(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),),
            ],
          )
        ],
      ),
    );
  }
}

class cartcontainer extends StatefulWidget {
  final String name;
  final String desc;
  final String image;
  final String price;
  late int counter;
  final int indexValue;

  cartcontainer(
      {super.key,
      required this.name,
      required this.desc,
      required this.image,
      required this.price,
      required this.counter,
      required this.indexValue});

  @override
  State<cartcontainer> createState() => _cartcontainerState();
}

class _cartcontainerState extends State<cartcontainer> {
  // int referanceCounter=0;
  //
  // @override
  // void initState() {
  //   referanceCounter=widget.counter;
  //   // TODO: implement initState
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(width: 1),
      ),
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(8),
              child: Image(
                image: AssetImage(
                  widget.image,
                ),
                height: 100,
                width: 100,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                widget.desc,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.counter != 0) {
                                widget.counter = widget.counter - 1;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 20,
                          ))),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "${widget.counter}",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            color: Colors.grey),
                      ))),
                  Container(
                      height: 40,
                      width: 40,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              widget.counter = widget.counter + 1;
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            size: 20,
                            color: Color(0xff53B175),
                          ))),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    cart.removeAt(widget.indexValue);
                  });
                },
                icon: Icon(
                  Icons.highlight_remove,
                  size: 35,
                ),
              ),
              Text(
                "${int.parse(widget.price) * widget.counter}/-",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}

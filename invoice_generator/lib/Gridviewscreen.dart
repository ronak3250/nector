import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/backerymodel.dart';
import 'package:invoice_generator/beverages.dart';
import 'package:invoice_generator/dairymodel.dart';
import 'package:invoice_generator/fruitmodel.dart';
import 'package:invoice_generator/legume.dart';
import 'package:invoice_generator/mealfish.dart';
import 'package:invoice_generator/productlisted.dart';
import 'package:invoice_generator/singleFruitItem.dart';
import 'package:invoice_generator/vegatable.dart';

import 'oilmodel.dart';

class Gridscreen extends StatefulWidget {
  const Gridscreen({super.key});

  @override
  State<Gridscreen> createState() => _GridscreenState();
}

class _GridscreenState extends State<Gridscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: fruits.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return SingleFruitItem(
              imageUrl: fruits[index].image,
              name: fruits[index].name,
              desc: fruits[index].desc,
              price: fruits[index].price, valueIndex: index, cartValue: fruits[index].addCart,favouriteValue: fruits[index].favourite,);
        },
      ),
    ));
  }
}

class vegetableGridview extends StatefulWidget {
  const vegetableGridview({super.key});

  @override
  State<vegetableGridview> createState() => _vegetableGridviewState();
}

class _vegetableGridviewState extends State<vegetableGridview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: vegetable.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return SingleFruitItem(imageUrl: vegetable[index].image, name: vegetable[index].name, desc: vegetable[index].desc, price: vegetable[index].price, valueIndex: index, cartValue: vegetable[index].addCart, favouriteValue: vegetable[index].favourite,);

        },
      ),
    ));
  }
}


class Fruitsandvegetable extends StatefulWidget {
  const Fruitsandvegetable({super.key});

  @override
  State<Fruitsandvegetable> createState() => _FruitsandvegetableState();
}

class _FruitsandvegetableState extends State<Fruitsandvegetable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                  padding: EdgeInsets.all(16),
                  physics: BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.fast),
                  itemCount: fruits.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 230,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return SingleFruitItem(imageUrl: fruits[index].image, name: fruits[index].name, desc: fruits[index].desc, price: fruits[index].price, valueIndex: index, cartValue: fruits[index].addCart, favouriteValue: fruits[index].favourite,);

                  },
                ),
                GridView.builder(
                  padding: EdgeInsets.all(16),
                  physics: BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.fast),
                  itemCount: vegetable.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 230,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {

                    return SingleFruitItem(imageUrl: vegetable[index].image, name: vegetable[index].name, desc: vegetable[index].desc, price: vegetable[index].price, valueIndex: index, cartValue: vegetable[index].addCart, favouriteValue: vegetable[index].favourite,);

                  },
                )
              ],
            ),
          ),
        ));
  }
}


class Oilgrid extends StatefulWidget {
  const Oilgrid({super.key});

  @override
  State<Oilgrid> createState() => _OilgridState();
}

class _OilgridState extends State<Oilgrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: oil.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return SingleFruitItem(imageUrl: oil[index].image, name: oil[index].name, desc: oil[index].desc, price: oil[index].price, valueIndex: index, cartValue: oil[index].addCart, favouriteValue: oil[index].favourite,);

        },
      ),
    ));
  }
}

class Meatfishgrid extends StatefulWidget {
  const Meatfishgrid({super.key});

  @override
  State<Meatfishgrid> createState() => _MeatfishgridState();
}

class _MeatfishgridState extends State<Meatfishgrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: meatfish.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return SingleFruitItem(imageUrl: meatfish[index].image, name: meatfish[index].name, desc: meatfish[index].desc, price: meatfish[index].price, valueIndex: index, cartValue: meatfish[index].addCart, favouriteValue: meatfish[index].favourite,);

        },
      ),
    ));
  }
}



class BackerySnackgrid extends StatefulWidget {
  const BackerySnackgrid({super.key});

  @override
  State<BackerySnackgrid> createState() => _BackerySnackgridState();
}

class _BackerySnackgridState extends State<BackerySnackgrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: backery.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return  SingleFruitItem(imageUrl: backery[index].image, name: backery[index].name, desc: backery[index].desc, price: backery[index].price, valueIndex: index, cartValue: backery[index].addCart, favouriteValue: backery[index].favourite,);

        },
      ),
    ));
  }
}

class Dairygrid extends StatefulWidget {
  const Dairygrid({super.key});

  @override
  State<Dairygrid> createState() => _DairygridState();
}

class _DairygridState extends State<Dairygrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: dairy.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return  SingleFruitItem(imageUrl: dairy[index].image, name: dairy[index].name, desc: dairy[index].desc, price: dairy[index].price, valueIndex: index, cartValue: dairy[index].addCart, favouriteValue: dairy[index].favourite,);

        },
      ),
    ));
  }
}

class Beveragesgrid extends StatefulWidget {
  const Beveragesgrid({super.key});

  @override
  State<Beveragesgrid> createState() => _BeveragesgridState();
}

class _BeveragesgridState extends State<Beveragesgrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: beverages.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return  SingleFruitItem(imageUrl: beverages[index].image, name: beverages[index].name, desc: beverages[index].desc, price: beverages[index].price, valueIndex: index, cartValue: beverages[index].addCart, favouriteValue: beverages[index].favourite,);

        },
      ),
    ));
  }
}

class LegumeGridScreen extends StatefulWidget {
  const LegumeGridScreen({super.key});

  @override
  State<LegumeGridScreen> createState() => _LegumeGridScreenState();
}

class _LegumeGridScreenState extends State<LegumeGridScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        itemCount: legume.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return SingleFruitItem(imageUrl: legume[index].image, name: legume[index].name, desc: legume[index].desc, price: legume[index].price, valueIndex: index, cartValue: legume[index].addCart, favouriteValue: legume[index].favourite,);

        },
      ),
    ));
  }
}

class explorescreen extends StatefulWidget {
  const explorescreen({super.key});

  @override
  State<explorescreen> createState() => _explorescreenState();
}

class _explorescreenState extends State<explorescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Find Products",
              style:
                  GoogleFonts.inter(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Container(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: productlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => productlist[index]["routes"]),
                      );
                    },
                    child: Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Image.asset(
                            productlist[index]["image"],
                            height: 100,
                            width: 100,
                          )),
                          Text(
                            productlist[index]["name"],
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(Random().nextInt(0xffffffff))
                            .withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black26, width: 1),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}

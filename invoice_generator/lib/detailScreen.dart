import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/favourite.dart';

import 'cartmodel.dart';

class DetailsScreen extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String desc;
  final String price;
final int indexvalue;
    bool cartvalue;
     bool favourite;
  DetailsScreen({super.key, required this.imageUrl, required this.name, required this.desc, required this.price, required this.indexvalue, required this.cartvalue, required this.favourite,});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int calprice=1;
  bool favouritecheck=false;
  bool check=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
        elevation: 0.0,
      ),
      body:SingleChildScrollView(
        physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(widget.imageUrl,height: 400,width: 400,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.name,style: GoogleFonts.inter(fontWeight: FontWeight.w800,fontSize: 40,),),
                  IconButton(onPressed: (){

                    setState(() {


                      favouritecheck==false?favouritecheck=true:favouritecheck=false;
                      widget.favourite==false?widget.favourite=true:widget.favourite=false;

                widget.favourite==false?
                favourite.add(Favourite(name: widget.name, desc: widget.desc, price: widget.price, image: widget.imageUrl, favourite: true, addCart: true))

:
                favourite.removeAt(widget.indexvalue);
                    });

                  }, icon: widget.favourite?Icon(Icons.favorite_border,size: 30,):Icon(Icons.favorite,size: 30,color: Colors.red,),),
                ],
              ),
              Text(widget.desc,style: GoogleFonts.inter(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.grey),),
              Row(
                children: [
                  Container(
                    height: 40,
                      width: 40,

                      child: IconButton(onPressed: (){
                        setState(() {
if(calprice!=1)
  {

    calprice=calprice-1;
  }

                        });
                      }, icon: Icon(Icons.remove,size: 20,))),
                  Container( height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child: Center(child: Text("$calprice",style: GoogleFonts.inter(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.grey),))),
                  Container(
                      height: 40,
                      width: 40,
                      child: IconButton(onPressed: (){
setState(() {

  calprice=calprice+1;
});
                      }, icon: Icon(Icons.add,size: 20,color: Color(0xff53B175),))),
                  Spacer(flex: 1,),
                  Text("${int.parse(widget.price)}/-",style: GoogleFonts.inter(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),

                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              Text("Product Details",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),

              SizedBox(height: 10,),
              Text("The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",textAlign: TextAlign.justify,style: GoogleFonts.inter(fontWeight: FontWeight.w300,fontSize: 14,color: Colors.grey),),

              SizedBox(height: 10,),
              Text("Nutritions",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Carbohydrates",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),

                  Text("10gm",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Proteins",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),
                  Text("80gm",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Minerals",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),
                  Text("12gm",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fats",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),
                  Text("8gm",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),

                ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Review",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                  Text("⭐⭐⭐⭐⭐",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
setState(() {
  widget.cartvalue==false?widget.cartvalue=true:widget.cartvalue=false;
  Cart cartData=Cart(name: widget.name,image: widget.imageUrl,desc: widget.desc,price: widget.price,counter:calprice, addCart: true ) ;

  check?cart.add(cartData):cart.removeAt(widget.indexvalue);

});

               },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  decoration: BoxDecoration(
                      color: widget.cartvalue?Color(0xff53B175):Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: widget.cartvalue?
                    Text("Add to Cart",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20))
:

                      Text("Remove from cart",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20))
                  ),
                ),
              )
            ],
          ),
        ),
      ) ,
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/cartmodel.dart';
import 'package:invoice_generator/detailScreen.dart';

class SingleFruitItem extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String desc;
  final String price;
  final int valueIndex;
   late  bool cartValue;
  late bool favouriteValue;
   SingleFruitItem({super.key, required this.imageUrl, required this.name, required this.desc, required this.price, required this.valueIndex, required this.cartValue, required this.favouriteValue});

  @override
  State<SingleFruitItem> createState() => _SingleFruitItemState();
}

class _SingleFruitItemState extends State<SingleFruitItem> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  DetailsScreen(imageUrl: widget.imageUrl, name: widget.name, desc: widget.desc, price: widget.price, indexvalue: widget.valueIndex, cartvalue: widget.cartValue, favourite: widget.favouriteValue, )),
        );
      },
      child: Container(
        height: 230,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                  padding: EdgeInsets.only(top:10),
                  child: Image.asset(
                    widget.imageUrl,
                    height: 100,
                    width: 100,
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.desc,
                        style: GoogleFonts.inter(
                            color: Colors.black45,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 36,
                        child: FloatingActionButton(

                          onPressed: () {
                            setState(() {
                              widget.cartValue==true?widget.cartValue=false:widget.cartValue=true;
                            widget.cartValue==false?cart.add(Cart(name: widget.name, image: widget.imageUrl, desc: widget.desc, price: widget.price, counter: 1, addCart: widget.cartValue )):
                                cart.removeAt(widget.valueIndex);
                            });

                          },
                          child: widget.cartValue?Icon(Icons.add):Icon(Icons.remove),
                          backgroundColor: widget.cartValue?Color(0xff53B175):Colors.red,
                        ),
                      )
                    ],
                  ),
                  Text(
                    widget.price,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black26, width: 1),
        ),
      ),
    );
  }
}

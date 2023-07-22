import 'dart:async';
import 'dart:math';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/location.dart';
import 'package:invoice_generator/loginscreen.dart';

class fourScreen extends StatefulWidget {
  const fourScreen({super.key});

  @override
  State<fourScreen> createState() => _fourScreenState();
}

class _fourScreenState extends State<fourScreen> {
  var code = Random().nextInt(9000) + 1000;
  bool check=false;
  var timer;
  int count=10;
  @override
  void initState() {
     timer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        /// callback will be executed every 1 second, increament a count value
        /// on each callback
        setState(() {
          if(count==0)
            {
              timer.cancel();
            }
          else
            {
              count--;
            }
        });
      },
    );
    Future.delayed(Duration(seconds: 10), ()
      {
        setState(() {
          check=true;
        });
        // throw Exception("Custom Error");
      });

    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }
  @override

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: Align(
              alignment: Alignment(0.4,0),
              child: Icon(
                Icons.arrow_back_ios,size: 30,
                color: Color(0xff53B175),
              ),
            ),
          ),
          body: Container(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Enter your 4-digit code",
                  style:
                  GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 20),
                ),


check?
    Center(child: Text('$code',style: TextStyle(fontSize: 30,letterSpacing: 10,color: Colors.black45),))
    :
Center(child:DottedLine(
  direction: Axis.horizontal,

  lineLength:100,
  lineThickness: 1.0,
  dashLength: 20.0,
  // dashColor: Colors.black,
  // dashGradient: [Colors.red, Colors.blue],
  // dashRadius: 0.0,
  // dashGapLength: 4.0,
  // dashGapColor: Colors.transparent,
  // dashGapGradient: [Colors.red, Colors.blue],
  // dashGapRadius: 0.0,
)),
               Center(
                 child: check==false ? CircularProgressIndicator():null,
               ),
                Align(alignment: Alignment.bottomLeft,
                child: Image.asset('assets/images/otp_image.png',height: 400,),
                )
              ],
            ),
          ),
          floatingActionButton:

        check?  SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(
              backgroundColor: Color(0xff53B175),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const locationScreen()),
                );
              },
              child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
            ),
          ):Container(
          height: 60,
            width: 150,
            decoration: BoxDecoration(color: Color(0xff53B175),
            borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('Resend Otp',style:GoogleFonts.inter(color: Colors.white)))),
        ));

  }
}
/// Function that will return a
/// "string" after some time
/// To demonstrate network call
/// delay of [2 seconds] is used
///
/// This function will behave as an
/// asynchronous function


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Image.asset('assets/images/logo.png'),
              Text('Welcome',style: GoogleFonts.inter(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),),
              Text('to our store',style: GoogleFonts.inter(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),),
              Text('\nGer your groceries in as fast as one hour',style: GoogleFonts.inter(fontSize: 14,color: Colors.white30,fontWeight: FontWeight.w300),),


              SizedBox(height: 40,),
              InkWell(
                onTap: ()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Secondscreen()),
    );
  },
                child: Container(
                  margin: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Color(0xff53B175),
    borderRadius: BorderRadius.circular(20)
  ),
    height: 70,

    child: Center(child: Text("Get Started",style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.w400),))),
              ),
            ]
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.png',),fit:BoxFit.cover,)
        ),
      ),
    ));
  }
}

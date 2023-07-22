import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:invoice_generator/threescreen.dart';
class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/back1.png',
                        ),
                        fit: BoxFit.cover,
                        opacity: 0.9)),
              ),
              Text('Get your groceries \nwith nectar',style: GoogleFonts.inter(fontSize:28,fontWeight: FontWeight.w400),),

              SizedBox(height: 30,),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: IntlPhoneField(
                  onTap: ()
                  {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThreeScreen()),
                  );

                  },
style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

enabled: false,
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  languageCode: "en",

                ),
              ),

              SizedBox(height: 30,),
              Center(child: Text("Or connect with social media",style: GoogleFonts.inter(fontSize:14,fontWeight: FontWeight.w300),)),


              SizedBox(height: 30,),
              InkWell(
                onTap: ()
                {
                  final snackBar = SnackBar(
                    content: const Text('Device Not supported',style: TextStyle(color: Colors.black),),
                    backgroundColor: (Colors.white),
                    action: SnackBarAction(
                      label: 'Okay',
                      onPressed: () {
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 70,

                    child: Center(child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/images/google.png"),height: 30,width: 30,),
                        Text(" Continue with Google",style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),)
                      ],
                    ))),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: ()
                {
                  final snackBar = SnackBar(
                    content: const Text('Device Not supported',style: TextStyle(color: Colors.black),),
                    backgroundColor: (Colors.white),
                    action: SnackBarAction(
                      label: 'Okay',
                      onPressed: () {
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 70,

                    child: Center(child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/images/facebook.png"),height: 30,width: 30,),
                        Text(" Continue with Facebook",style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),)
                      ],
                    ))),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

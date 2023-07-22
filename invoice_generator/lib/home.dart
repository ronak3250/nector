import 'dart:async';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Firstscreen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (BuildContext context) {
              return new FirstScreen();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff53B175),
            body: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo.png'),
                        SizedBox(
                          width: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "nector",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: "\nOnline Grocerlet",
                              style: GoogleFonts.inter(
                                  color: Colors.white60,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                        ]))
                      ],
                    ),
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )),
      );
  }
}

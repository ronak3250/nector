import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'otpscreen.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
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
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Enter the Mobile Number",
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            IntlPhoneField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              languageCode: "en",
              onChanged: (phone) {
                print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Color(0xff53B175),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fourScreen()),
            );
          },
          child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
        ),
      ),
    ));
  }
}

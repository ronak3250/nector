import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/loginscreen.dart';

import 'itemScreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}
bool check=false;
bool check1=false;
TextEditingController email=TextEditingController();

TextEditingController password=TextEditingController();

TextEditingController username=TextEditingController();
TextEditingController re_password=TextEditingController();
final _formKey = GlobalKey<FormState>();
class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/loginicon.png',
                  height: 200,
                  width: 100,
                ),   Align(
                  alignment: Alignment(-0.6, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Enter your credentials to continue',
                        style: GoogleFonts.inter(
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Username',
                        style: GoogleFonts.inter(
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: username,
                        obscureText: check,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),

                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff53B175),
                            )),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Email',
                        style: GoogleFonts.inter(
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(

                        controller: email,
                        validator: (emailvalue) {
                          bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(emailvalue!);
                          if(emailvalue!.isEmpty)
                          {
                            return 'Enter The Email Address !!';
                          }
                          if(emailValid!=true)
                          {
                            return "Enter Valid Email Address";
                          }


                        },
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff53B175),
                            )),
                      ),

                      Text(
                        'Password',
                        style: GoogleFonts.inter(
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: check,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),
                            suffixIcon:

                            check?InkWell(
                                onTap: ()
                                {
                                  setState(() {
                                    check=false;
                                  });

                                },

                                child: Icon(Icons.visibility_off, color: Color(0xff53B175))):  InkWell(
                                onTap: (){
                                  setState(() {
                                    check=true;
                                  });

                                },
                                child: Icon(Icons.remove_red_eye, color: Color(0xff53B175))),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff53B175),
                            )),
                      ),
                      Text(
                        'Re-Enter Password',
                        style: GoogleFonts.inter(
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: re_password,
                        obscureText: check1,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53B175)), //<-- SEE HERE
                            ),
                            suffixIcon:

                            check1?InkWell(
                                onTap: ()
                                {
                                  setState(() {
                                    check1=false;
                                  });

                                },

                                child: Icon(Icons.visibility_off, color: Color(0xff53B175))):  InkWell(
                                onTap: (){
                                  setState(() {
                                    check1=true;
                                  });

                                },
                                child: Icon(Icons.remove_red_eye, color: Color(0xff53B175))),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff53B175),
                            )),
                      ),

                    ],
                  ),
                ),







                SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "By continuing you agree to our",
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: "Terms of Service and Privacy Policy.",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff53B175)))
                    ])),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if(_formKey.currentState!.validate())
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginScreen()),
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text("Create a Account",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20)),
                    ),
                  ),
                ),



                SizedBox(
                  height: 30,
                ),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an account ?",
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: "SignIn",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff53B175)))
                    ]))










              ],
            ),
          ),
        ),
      ),
    ));
  }
}

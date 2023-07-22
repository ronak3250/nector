import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/itemScreen.dart';

import 'Signup.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}
bool check=false;
TextEditingController email=TextEditingController();

TextEditingController password=TextEditingController();
class _loginScreenState extends State<loginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/loginicon.png',
                    height: 100,
                    width: 100,
                  ),
                  Align(
                    alignment: Alignment(-0.6, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Log In',
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Enter your emails and password',
                          style: GoogleFonts.inter(
                              color: Colors.black26,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Email',
                          style: GoogleFonts.inter(
                              color: Colors.black26,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Password',
                          style: GoogleFonts.inter(
                              color: Colors.black26,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
if(_formKey.currentState!.validate())
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Itemscreen()),
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
                        child: Text("Log In",
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
                  InkWell(
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Don't have an account ?",
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: "SignUp",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff53B175)))
                    ])),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

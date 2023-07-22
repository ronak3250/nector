
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/loginscreen.dart';

class locationScreen extends StatefulWidget {
  const locationScreen({super.key});

  @override
  State<locationScreen> createState() => _locationScreenState();
}

class _locationScreenState extends State<locationScreen> {
  String dropdownvalue = 'Ahmedabad';

  // List of items in our dropdown menu
  var items = ['Ahmedabad', 'Surat', 'Vadodara', 'Bhavnagar'];
  final List<String> district1 = [
    'Ranip',
    'Navrangpura',
    'Vadaj',
    'Paldi',
    'Vasna',
    'Sahpur',
    'Sabarmati',
    'Jamalpur',
    'Juhapura',
    'Sarkhej',
    'Vejalpur'
  ];
  final List<String> district2 = [
    'Sarthana',
    'katargam',
    'Laskana',
    'dholdol',
    'Yogi Chowk',
    'Jahgirpura',
    'A.K.road'
        ''
  ];

  String? selectDistrict = 'Ahmedabad';
  String? selectSub = 'Sarkhej';

  late Map<String, List<String>> dataset = {
    'Ahmedabad': district1,
    'Surat': district2,
  };
  onDistrictChanged(String? value) {
    //dont change second dropdown if 1st item didnt change
    if (value != selectDistrict) selectSub = null;
    setState(() {
      selectDistrict = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/location.png',
                    width: 150,
                    height: 150,
                  ),
                  Text('Select Your Location',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700)),
                  Text(
                      '\nSwich on your location to stay in tune with\nwhat’s happening in your are',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Select Your District",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration:BoxDecoration(

                                color: Color(0xff53B175),
                                borderRadius: BorderRadius.circular(10)
                            ) ,
                            child: DropdownButton<String?>(
                                underline: SizedBox(),
                                isExpanded: true,
                                borderRadius: BorderRadius.circular(20),
                                dropdownColor: Color(0xff53B175),
                                value: selectDistrict,
                                items: dataset.keys.map((e) {
                                  return DropdownMenuItem<String?>(

                                    value: e,
                                    child: Text('$e',style: GoogleFonts.inter(color: Colors.white)),
                                  );
                                }).toList(),
                                onChanged: onDistrictChanged),
                          ),
                          Text(
                            "Select Your Sub District",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration:BoxDecoration(

                                color: Color(0xff53B175),
                                borderRadius: BorderRadius.circular(10)
                            ) ,
                            child: DropdownButton(
                                underline: SizedBox(),
                                dropdownColor: Color(0xff53B175),
                                isExpanded: true,
                                value: selectSub,
                                items: (dataset[selectDistrict] ?? []).map((e) {
                                  return DropdownMenuItem<String?>(
                                    value: e,
                                    child: Text('$e',style: GoogleFonts.inter(color: Colors.white)),
                                  );
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    selectSub = val!;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const loginScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text("Submit",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

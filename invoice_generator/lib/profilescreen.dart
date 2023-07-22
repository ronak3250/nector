import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {


  File? imageFile;
  getFromGallery() async {
    var pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);

      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    var pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);

      });
    }
  }
  @override
  Widget build(BuildContext context)
  {
  return SafeArea(child: Scaffold(
body:Center(
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,

    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    children: [

      Container(
          child: imageFile == null
              ? Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Align(
              child: Container(
                margin: EdgeInsets.all(30),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        "ADD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Select Image"),
                              content: const Text(
                                  "Add Your Profile Image from Mention Below"),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () async {
                                    await getFromGallery();
                                    Navigator.of(context).pop();
                                  },
                                  child:
                                  Text("PICK FROM GALLERY"),
                                ),
                                Container(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    await _getFromCamera();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("PICK FROM CAMERA"),
                                )
                              ],
                            ),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue),
                            height: 30,
                            width: 30,
                            child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          // : Container(
          //     child: Image.file(
          //       imageFile!,
          //       fit: BoxFit.cover,
          //     ),
          //   ))
              : Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Align(
              child: Container(
                margin: EdgeInsets.all(30),
                child: CircleAvatar(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text("Select Image"),
                            content: const Text(
                                "Add Your Profile Image from Mention Below"),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () async {
                                  await getFromGallery();
                                  Navigator.of(context).pop();
                                },
                                child:
                                Text("PICK FROM GALLERY"),
                              ),
                              Container(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  await _getFromCamera();
                                  Navigator.of(context).pop();
                                },
                                child: Text("PICK FROM CAMERA"),
                              )
                            ],
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue),
                          height: 30,
                          width: 30,
                          child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ))),
                    ),
                  ) ,
                  radius: 120 - 5,
                  backgroundImage: Image.file(
                    imageFile!,
                    fit: BoxFit.cover,
                  ).image,
                ),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          )),

      Divider(thickness: 1,),
     ListTile(
       leading: Icon(Icons.reorder_sharp,color: Colors.black,),
       title: Text("Order Details",style:GoogleFonts.inter(fontWeight: FontWeight.w900)),

     ),
      ListTile(
        leading: Icon(Icons.people,color: Colors.black,),
        title: Text("Share a Reference",style:GoogleFonts.inter(fontWeight: FontWeight.w900)),

      ),
      ListTile(
        leading: Icon(Icons.support_agent,color: Colors.black,),
        title: Text("Support",style:GoogleFonts.inter(fontWeight: FontWeight.w900)),

      ),
      ListTile(
        leading: Icon(Icons.share,color: Colors.black,),
        title: Text("Share",style:GoogleFonts.inter(fontWeight: FontWeight.w900)),

      ),
      ListTile(
        leading: Icon(Icons.question_mark,color: Colors.black,),
        title: Text("About us",style:GoogleFonts.inter(fontWeight: FontWeight.w900)),

      ),

      ListTile(
        leading: Icon(Icons.track_changes_sharp,color: Colors.black,),
        title: Text("Order History",style:GoogleFonts.inter(fontWeight: FontWeight.w900)),

      ),

      ListTile(
        leading: Icon(Icons.login_outlined,color: Colors.black,),
        title: Text("Log Out",style:GoogleFonts.inter(fontWeight: FontWeight.w900)),

      ),

    ],

  ),
)
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:invoice_generator/detailScreen.dart';
import 'package:invoice_generator/pdfpreview.dart';
import 'package:invoice_generator/profilescreen.dart';

import 'home.dart';
import 'itemScreen.dart';

void main()
{
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home: Itemscreen(),));
}
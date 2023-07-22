
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_generator/cartmodel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show Color, Size, rootBundle;
import 'package:printing/printing.dart';

import 'dart:io';

int total=0;
int i=0;
Future<Uint8List> makePdf()  async {

  // Uint8List logobytes;
  // PdfImage _logoImage;
  // final ByteData imageData = await rootBundle.load('assets/images/my_image.png');
  // final Uint8List bytes = imageData.buffer.asUint8List();

  final pdf = Document();
  // final PdfImage image = PdfImage.file(
  //   pdf.document,
  //   bytes: bytes,
  // );
  pdf.addPage(
    Page(
      build: (context) {
        return Column(
          children: [


            Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    Expanded(child:Container(
        child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text("Nector Pvt.Ltd",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
              Text("Block No. 36, Trisha -2,Astron \nSociety Main Road,Opp. Kings Heights,\nAmin Marg,Near Parth\nDental Care,Rajkot-360002",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,)),
              Text("02268056040\nMon to Sat 9:30 AM to 6:00 PM\nhelp@nector.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,)),

            ]
        )
    ), ),
    Expanded(
      child:Container(

          decoration:BoxDecoration(
            border:Border.all(width: 1)
          )
      )
    ),


          ]
        ),
              Center(
                child: Text("INVOICE",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),

              ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
Align(
  alignment: Alignment.centerLeft,
  child:   Container(
      child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text("Bill to:",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,)),
            Text("Aman Party Plot,Jivaraj\n Park,Jivaraj,Ahemdabad-380051",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,)),
            Text("02268056040\n Email:ravmehta@gmail.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,)),

          ]
      )
  ),
),
Spacer(),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Invoice No:1233444",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,)),

                            Text("Date:${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),

                          ]
                      )
                  ),
                ],

            ),
            SizedBox(height: 30),
            Container(
            //  color: PdfColor.fromHex(hexToColor() as String),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("id",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    Text("Item Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),

                    Text("QTY",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),

                    Text("Rate",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),

                    Text("Discount",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),


                    Text("Amount",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),


                  ]
              )
            ),
SizedBox(height: 20),
            Column(
              children: cart.map((e){
                i=i+1;
                int subtotal=int.parse(e.price)*e.counter;
                total=subtotal+total;
               return Container(
                  //   color: PdfColor.fromHex(hexT),
                    child:  Row(

crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Container(
                              child: Center(
                                child:Text("${i}",style:TextStyle(fontWeight: FontWeight.bold,)),
                              )
                          ) ),
                          Expanded(child: Container(
                              child: Center(
                                child: Text(e.name,style:TextStyle(fontWeight: FontWeight.bold,)),
                              )
                          ) ),

                          Expanded(child: Container(
                              child: Center(
                                child:  Text("${e.counter}",style:TextStyle(fontWeight: FontWeight.bold,)),
                              )
                          ) ),

                          Expanded(child: Container(
                              child: Center(
                                child:    Text(e.price,style:TextStyle(fontWeight: FontWeight.bold,)),
                              )
                          ) ),

                          Expanded(child: Container(
                              child: Center(
                                child:   Text("0",style:TextStyle(fontWeight: FontWeight.bold,)),
                              )
                          ) ),


                          Expanded(child: Container(
                              child: Center(
                                child:   Text("${subtotal}",style:TextStyle(fontWeight: FontWeight.bold,)),
                              )
                          ) ),








                        ]
                    )
                );

              }).toList()
            ),
SizedBox(height: 20),
            Container(
               // color: PdfColor.fromHex(hexToColor() as String),
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),



                      Text("$total/-",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),


                    ]
                )
            ),
            Spacer(flex: 1),
            Container(
             //   color: PdfColor.fromHex(hexToColor() as String),
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Mode:",style:TextStyle(fontWeight: FontWeight.bold,)),



                      Text("Cash On Delivery",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),


                    ]
                )
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("For Nector Pvt.Ltd",style:TextStyle(fontWeight: FontWeight.bold,)),


SizedBox(height: 30),
                    Text("AUTHORIZED SIGNTORY",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),


                  ]
              ),
            )




          ],);
      },
    ),
  );


  final outPut = await getExternalStorageDirectory();

  String path = outPut!.path + '/example.pdf';
  final file = File(path);
  file.writeAsBytesSync(await pdf.save());

  print(outPut.path);

  return pdf.save();
}

Widget PaddedText(
    final String text, {
      final TextAlign align = TextAlign.left,
    }) =>
    Padding(
      padding: EdgeInsets.all(5),
      child: Text(
        text,
        textAlign: align,
      ),
    );
Color hexToColor() {
  return  Color(int.parse('0xff53B175'.substring(1, 7), radix: 16) + 0xFF000000);
}
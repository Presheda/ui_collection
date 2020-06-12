import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KayakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.white,

          ),

          Positioned(
            top: screenHeight /2 + 75,
            child: Text("Kayak",
            style: GoogleFonts.inconsolata(
              fontSize: 175,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF3F5F7)
            ),),

          ),

          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 30),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios, color: Color(0xFF274B61),
                  ),
                  Text("Single kayak",
                    style: GoogleFonts.inconsolata(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFF274B61)
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios, color: Color(0xFF274B61),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 100,
            left: 25,
            child: Container(
              width: screenWidth - 50,
              child: Text('We start at the kayak base at port and paddle past the Homlong Bay and towards the point where you can see the waterfall.',
                  style: GoogleFonts.inconsolata(
                      fontSize: 14.0,
                      color: Color(0xFF8597A0)
                  )
              ),
            ),
          ),

         Positioned(
           top: 155,
           left: 25,
           child: Container(
             width: screenWidth,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Stack(
                       children: <Widget>[
                         Container(
                           height: 80,
                           width: 80,
                           color: Colors.transparent,
                         ),

                         Container(
                           height: 80,
                           width: 80,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                               image: AssetImage("assets/model.jpg"),
                               fit: BoxFit.cover
                             )
                           ),
                         ),

                         Positioned(
                           bottom: 5,
                           right: 5,
                           child: Container(
                             height: 24,
                             width: 24,
                             child: Center(
                               child: Icon(Icons.info_outline),
                             ),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(12),
                               color: Colors.white
                             ),
                           ),
                         )
                       ],
                     ),

                     SizedBox(height: 25,),
                     Text("Duration", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       color: Color(0xFF88969E),
                     ) ,),


                     SizedBox(height: 10,),
                     Text("2 Hours", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       color: Color(0xFF2C4B5D),
                     ) ,),



                     SizedBox(height: 25,),
                     Text("Minimum Age", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       color: Color(0xFF88969E),
                     ) ,),

                     SizedBox(height: 10,),
                     Text("8 Years", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       color: Color(0xFF2C4B5D),
                     ) ,),




                     SizedBox(height: 25,),
                     Text("Available Season", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       color: Color(0xFF88969E),
                     ) ,),

                     SizedBox(height: 10,),
                     Text("May to Sep.", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       color: Color(0xFF2C4B5D),
                     ) ,),

                     SizedBox(height: 25,),
                     Text("FROM", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       color: Color(0xFF88969E),
                     ) ,),

                     SizedBox(height: 10,),
                     Text("\$39.99", style: GoogleFonts.inconsolata(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       color: Color(0xFF2C4B5D),
                     ) ,),

                     SizedBox(height: 20,),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         padding: EdgeInsets.only(left: 15, right: 15, ),
                         height: 40,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(7.0),
                           color: Color(0xFF44AAFB)
                         ),
                         child: Center(
                           child: Text("Book Now", style: GoogleFonts.inconsolata(
                             fontSize: 15,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                           ),),
                         ),
                       ),
                     )



                   ],
                 ),

                 RotatedBox(
                   quarterTurns: 1,
                   child: Container(
                     height: 200,
                     width: 500,
                     child: Center(
                       child: Container(
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 image: AssetImage("assets/kayak2.png"),
                                 fit: BoxFit.cover
                             )
                         ),
                       ),
                     ),

                   ),
                 )
               ],
             ),
           ),
         )

        ],
      ),

    );
  }
}

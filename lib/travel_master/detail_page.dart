import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            color: Color(0xFFFE7050),
          ),
          Positioned(
            bottom: 22,
            child: Container(
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withOpacity(0.3),
                    size: 11,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withOpacity(0.5),
                    size: 12,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withOpacity(0.7),
                    size: 13,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withOpacity(0.9),
                    size: 14,
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.local_airport,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.85,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
                color: Colors.white),
          ),
          Container(
              height: screenHeight * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
                image: DecorationImage(
                    image: AssetImage("assets/fishing.jpg"), fit: BoxFit.cover),
              )),

           Positioned(
             top: 400,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.only(left: 15),
                   child: Container(
                     width: screenWidth - 35,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Row(
                               children: <Widget>[
                                 Icon(Icons.location_on, size: 12,
                                   color: Colors.grey,),
                                 Text("Asia, Myanmar", style: GoogleFonts.openSans(
                                     fontSize: 12,
                                     color: Colors.grey
                                 ),),

                               ],
                             ),

                             SizedBox(
                               height: 7,
                             ),
                            
                           ],
                         )
                       ],
                     ),
                   ),
                 )
               ],
             ),
           )
        ],
      ),
    );
  }
}

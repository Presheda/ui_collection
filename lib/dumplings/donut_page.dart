import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icecream.jpg"),
                    fit: BoxFit.cover),
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            Container(
              height: 250,
              color: Colors.white.withOpacity(0.8),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35, left: 30, right: 30),
              child: Container(
                padding: EdgeInsets.only(left: 45),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 16.0,
                          color: Color(0xFF999798),
                        ),
                        hintText: "Find something special",
                        hintStyle: GoogleFonts.openSans(
                            fontSize: 12, color: Color(0xFF999798))),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "The Best Food",
                    style: GoogleFonts.openSans(
                        fontSize: 25,
                        color: Color(0xFF312F2E),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "In Only 20 Mins",
                    style: GoogleFonts.openSans(
                        fontSize: 25,
                        color: Color(0xFF312F2E),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF7C7574),
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "951 Rue Gleichner Coves, Suite 648",
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Color(0xFF7C7574),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 225,
              child: Container(
                height: screenHeight - 225,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: ListView(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "WEEKLY SPECIAL",
                            style: GoogleFonts.openSans(
                                color: Color(0xFFC4C2C2),
                                fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.rotate_left,
                                color: Color(0xFFC4C2C2),
                              ),
                              onPressed: () {})
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3.0,
                                            blurRadius: 4.0,
                                            color: Color(0xFFD1C0B9))
                                      ],
                                      image: DecorationImage(
                                          image: AssetImage("assets/chefhat.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  "Gerald Jacobs",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: Color(0xFF353535),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),

                          Text(
                            "Location",
                            style: GoogleFonts.openSans(
                              fontSize: 14.0,
                              color: Color(0xFFE0AC9B),
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Container(
                        width: screenWidth - 30,
                        child: Text(
                          "Our donuts have over 18 flavors and each of them will give you the different impression. Select any 6 donuts to make a package in a special price this week.",
                          style: GoogleFonts.openSans(
                            fontSize: 12.5,
                            color: Color(0xFF939190)
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Text(
                        '\$15.99',
                        style: TextStyle(
                          // fontFamily: 'OpenSans',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF322F2E)),
                      ),

                      Image(
                        image: AssetImage("assets/donuts.png"),
                        fit: BoxFit.cover,
                        height: 250,
                      )


                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

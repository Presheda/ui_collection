import 'package:flutter/cupertino.dart';
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

            child: Align(
              widthFactor: 1,
              heightFactor: 0.5,
              alignment: Alignment.bottomCenter,
              child: Container(
               height: (screenHeight * 0.85) - ((screenHeight * 0.5) + 20),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ListView(
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
                                      Icon(
                                        Icons.location_on,
                                        size: 12,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Asia, Myanmar",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Myanmar",
                                    style: GoogleFonts.openSans(
                                        fontSize: 27, fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Container(
                                height: 60,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      height: 7.0,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          width: screenWidth - 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Recommended",
                                style: GoogleFonts.openSans(
                                  fontSize: 17,
                                  color: Color(0xFF6A6A6A),
                                ),
                              ),
                              Container(
                                width: 100,
                                child: Center(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        height: 50,
                                      ),
                                      Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/profilepic.jpg"))),
                                      ),
                                      Positioned(
                                        right: 20,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFE7050)),
                                          child: Center(
                                            child: Text(
                                              "+28",
                                              style: GoogleFonts.openSans(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "More",
                                    style: GoogleFonts.openSans(
                                        color: Color(0xFF6A6A6A),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Icon(
                                    Icons.expand_more,
                                    color: Color(0xFF6A6A6A),
                                    size: 12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 15.0, ),
                          child: Container(
                            width: screenWidth - 20,
                            child: Text(
                                'Officially the Republic of the Union of Myanmar and also known as Burma, is a country in Southeast Asia',
                                style: GoogleFonts.openSans(
                                    color: Color(0xFF6A6A6A),
                                    fontWeight: FontWeight.w300)),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 15.0),
                          child: Container(
                            width: screenWidth - 20,
                            child: Text(
                                'Officially the Republic of the Union of Myanmar and also known as Burma, is a country in Southeast Asia',
                                style: GoogleFonts.openSans(
                                    color: Color(0xFF6A6A6A),
                                    fontWeight: FontWeight.w300)),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
              image: DecorationImage(
                  image: AssetImage("assets/fishing.jpg"), fit: BoxFit.cover),
            ),

          ),

        ],
      ),
    );
  }
}

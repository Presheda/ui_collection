import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicollection/wine_app/wine_detail.dart';

import 'model.dart';

class WineAppMain extends StatefulWidget {
  @override
  _WineAppMainState createState() => _WineAppMainState();
}

class _WineAppMainState extends State<WineAppMain> {
  final wineBrands = wines;
  final recommendedList = recommendWines;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: screenHeight * 0.5,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 12,
                        spreadRadius: 17,
                      )
                    ]),
              ),
              Positioned(
                top: 15,
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 7),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 45,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Boutique",
                            style: GoogleFonts.abrilFatface(
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "More",
                            style: GoogleFonts.abrilFatface(
                                fontSize: 12, color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: screenHeight * 0.35,
                        width: screenWidth,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: wineBrands
                                .map((wine) => _buildCard(wine))
                                .toList()),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Recommend",
                  style: GoogleFonts.abrilFatface(
                    fontSize: 25,
                  ),
                ),

                Text(
                  "More",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: recommendedList.map((e) {
                  return _buildCard(e);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(Wine wine) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (c)=> WineDetail(wineDetail: wine,))
          );
        },
        child: Container(
          width: screenWidth * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4.0,
                    spreadRadius: 5.0,
                    color: Colors.grey.withOpacity(0.1))
              ]),
          child: Stack(
            children: <Widget>[
              Container(
                height: screenHeight * 0.35,
                width: screenWidth * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            color: wine.bgColor),

                        child: Hero(
                            tag: wine.imgPath,
                            child: Padding(
                              padding: const EdgeInsets.only(top:20, bottom: 20),
                              child: Container(
                                width: screenWidth * 0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(wine.imgPath),
                                        fit: BoxFit.contain)),
                              ),
                            )),
                      ),
                    ),
                    Container(

                      width: screenWidth * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0))
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(wine.title,
                              style: GoogleFonts.abrilFatface(
                                fontSize: 14
                              ),
                            ),

                            SizedBox(
                              height: 5.0,
                            ),

                            Text(wine.subTitle,
                              style: GoogleFonts.abrilFatface(
                                fontSize: 11,
                                color: Colors.grey
                              ),
                            ),

                            SizedBox(
                              height: 5.0,
                            ),

                            Row(
                              children: <Widget>[
                                getRatingStar(wine.rating, 1),
                                getRatingStar(wine.rating, 2),
                                getRatingStar(wine.rating, 3),
                                getRatingStar(wine.rating, 4),
                                getRatingStar(wine.rating, 5),
                                SizedBox(width: 3.0),
                                Text(wine.rating.roundToDouble().toString(),
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF199693))),
                              ],
                            )




                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 7.0,
                left: 7.0,
                child: Text(
                  wine.price,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 7,
                right: 10.0,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecommended(Wine wine) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {

        },
        child: Container(
          width: screenWidth * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4.0,
                    spreadRadius: 5.0,
                    color: Colors.grey.withOpacity(0.1))
              ]),
          child: Stack(
            children: <Widget>[
              Container(
                height: screenHeight * 0.35,
                width: screenWidth * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            color: wine.bgColor),

                        child: Padding(
                          padding: const EdgeInsets.only(top:20, bottom: 20),
                          child: Container(
                            width: screenWidth * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(wine.imgPath),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ),
                    ),
                    Container(

                      width: screenWidth * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0))
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(wine.title,
                              style: GoogleFonts.abrilFatface(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(
                              height: 5.0,
                            ),

                            Text(wine.subTitle,
                              style: GoogleFonts.abrilFatface(
                                  fontSize: 11,
                                  color: Colors.grey
                              ),
                            ),

                            SizedBox(
                              height: 5.0,
                            ),

                            Row(
                              children: <Widget>[
                                getRatingStar(wine.rating, 1),
                                getRatingStar(wine.rating, 2),
                                getRatingStar(wine.rating, 3),
                                getRatingStar(wine.rating, 4),
                                getRatingStar(wine.rating, 5),
                                SizedBox(width: 3.0),
                                Text(wine.rating.roundToDouble().toString(),
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF199693))),
                              ],
                            )




                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 7.0,
                left: 7.0,
                child: Text(
                  wine.price,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 7,
                right: 10.0,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getRatingStar(rating, index) {
    if (index <= rating) {
      return Icon(
        Icons.star,
        color: Color(0xFF199693),
        size: 20.0,
      );
    } else {
      return Icon(
        Icons.star,
        color: Color(0xFFADDDDD),
        size: 20.0,
      );
    }
  }
}

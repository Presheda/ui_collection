
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

class WineDetail extends StatefulWidget {

  final Wine wineDetail;

  WineDetail({this.wineDetail});

  @override
  _WineDetailState createState() => _WineDetailState();
}

class _WineDetailState extends State<WineDetail> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: widget.wineDetail.bgColor,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[

              Container(
                height: screenHeight ,
                decoration: BoxDecoration(
                    color: Colors.white
                ),

                child: Align(
                  alignment: Alignment.bottomCenter,
                  widthFactor: 1,
                  child: Container(
                    width: screenWidth,
                    height: (screenHeight) - (( screenHeight * 0.7) + 10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25,
                          right: 15,
                          top: 15,
                          bottom: 15
                      ),
                      child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Essentially Geared Wine',
                                      style: TextStyle(
                                        fontFamily: 'AbrilFatFace',
                                        fontSize: 20.0,
                                      )
                                  ),
                                  SizedBox(height: 7.0),
                                  Text('Every Journey is An Opportunity',
                                      style: TextStyle(
                                          fontFamily: 'AbrilFatFace',
                                          fontSize: 11.0,
                                          color: Colors.grey
                                      )
                                  )
                                ],
                              ),
                              Icon(
                                Icons.favorite,
                                color: widget.wineDetail.bgColor.withOpacity(0.5),
                                size: 22.0,
                              )
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            child: Text('Whether it\'s an impromptu gathering with good friends or sustainbly canning wine to keep up with your daily adventures. Together we seek the uncommon.',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey
                                )
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              ),


              Container(
                height: screenHeight * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50)
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 12,
                      spreadRadius: 7.0
                    )
                  ]
                ),

                child: Align(
                  alignment: Alignment.bottomCenter,
                  widthFactor: 1,
                  child: Container(
                    width: screenWidth,
                    height: (screenHeight * 0.7) - (( screenHeight * 0.45) + 10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25,
                          right: 15,
                          top: 15,
                          bottom: 15
                      ),
                      child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(widget.wineDetail.title,
                                    style: GoogleFonts.abrilFatface(
                                      fontSize: 20,
                                    ),
                                  ),

                                  SizedBox(height: 7.0),
                                  Text(widget.wineDetail.subTitle,
                                    style: GoogleFonts.abrilFatface(
                                      fontSize: 11,
                                      color: Colors.grey
                                    ),
                                  ),

                                ],
                              ),

                              Text(widget.wineDetail.price,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: widget.wineDetail.bgColor
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height: 20.0),
                          Text('375ml of California Chardonnay',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey
                              )
                          ),
                          Text('Pair with: Fried chicken, Ramen Noodles, Nachos Supreme',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey
                              )
                          ),
                          Text('Golden Apple Crisp + Rooftop Parties',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey
                              )
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                height: screenHeight * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:
                  Radius.circular(50),
                  ),
                  color: widget.wineDetail.bgColor
                ),
              ),


              Positioned(
                top: 15,
                left: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.search, color: Colors.white,
                          ),
                        onPressed: (){
                            Navigator.pop(context);
                        },
                      ),

                      Icon(Icons.shopping_cart, color: Colors.white,)


                    ],
                  ),
                ),
              ),


              Positioned(
                top: 45,
                left: 15,
                right: 15,
                child: Hero(
                  tag: widget.wineDetail.imgPath,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(20/360),
                    child: Container(
                      height: screenHeight * 0.35,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.wineDetail.imgPath)
                        )
                      ),
                    ),
                  ),
                ),
              )


            ],
          )
        ],
      ),
    );
  }
}

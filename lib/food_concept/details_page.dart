import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight  ,
          ),
          Container(
            height: screenHeight * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/green.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100.0))),
          ),
          Positioned(
              top:  screenHeight * 0.1,
              width: screenWidth,
              child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: screenHeight * 0.35,
                    width: screenHeight * 0.35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(widget.heroTag),
                            fit: BoxFit.contain)),
                  ))),


          Positioned(
            top:  screenHeight * 0.45,
            height: screenHeight * 0.6,
            width: screenWidth,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 20, bottom: 20
                ),
                child: ListView(
                  children: <Widget>[
                    Center(
                      child: Text(
                        widget.foodName,
                        style: GoogleFonts.montserrat(fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "4.9",
                          style: GoogleFonts.montserrat(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        SmoothStarRating(
                          color: Colors.green,
                          isReadOnly: true,
                          allowHalfRating: true,
                          starCount: 5,
                          rating: 4.9,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.foodPrice,
                          style: GoogleFonts.montserrat(fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFEDFEE5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(
                                      Icons.remove_circle_outline,
                                      color: Color(0xFF5CB238),
                                    ),
                                    onPressed: () {}),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "3",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xFF5CB238), fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Color(0xFF5AC035),
                                    ),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Text(
                      "About the food",
                      style: GoogleFonts.montserrat(fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      child: Text('This light home-cooked food is low salt and low oil with balanced nutrition, selected from high-quality ingredients. This delicious food maybe your best healthy choice.',
                        style: GoogleFonts.montserrat(
                            fontSize: 14.0,
                            color: Colors.grey
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),


                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFF5AC035),
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Total",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                              ),
                            ),


                            SizedBox(
                              width: 15,
                            ),


                            Text("\$" + widget.foodPrice,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    )

                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}

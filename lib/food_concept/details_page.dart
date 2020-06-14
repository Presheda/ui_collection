import 'package:flutter/material.dart';
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
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/green.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100.0))),
              ),
              Positioned(
                  top: 50.0,
                  left: (MediaQuery.of(context).size.width / 2) - 125,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                      ))),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 300,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        widget.foodName,
                        style: GoogleFonts.montserrat(fontSize: 24),
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
                            color: Color(0xFF5B8842),
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
                            "\$" + widget.foodPrice,
                            style: GoogleFonts.montserrat(fontSize: 24),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFF5B8842).withOpacity(0.2)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(
                                        Icons.remove_circle_outline,
                                        color: Color(0xFF5B8842),
                                      ),
                                      onPressed: () {}),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "3",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xFF5B8842), fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.add_circle,
                                        color: Color(0xFF5B8842),
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      Text(
                        "About the food",
                        style: GoogleFonts.montserrat(fontSize: 20),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFF5B8842),
                          borderRadius: BorderRadius.circular(20)
                        ),

                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Text("Total",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                                ),
                              ),


                              Text("\$" + widget.foodPrice,
                                style: TextStyle(
                                  fontSize: 15,
                                    color: Colors.white
                                ),
                              ),


                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

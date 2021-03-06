
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details_page.dart';



class CoffeeHomePageState extends StatefulWidget {
  @override
  _MyHomePageStateState createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<CoffeeHomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15),
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Welcome, Nadia",
                style: GoogleFonts.varela(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/model.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(right: 45),
            child: Container(
              child: Text("Let's select the best taste for your next coffee break!.",
                style: GoogleFonts.nunito(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFB0AAA7)
                ),
              ),
            ),
          ),


          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Taste of the week",
                style: GoogleFonts.varela(
                    fontSize: 17.0,
                    color: Color(0xFF473D3A)
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text("See all",
                  style: GoogleFonts.varela(
                      fontSize: 15.0,
                      color: Color(0xFFCEC7C4)
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 15.0,
          ),

          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                _coffeeListCard("assets/starbucks.png",
                "Caffe Misto",
                    "Coffeeshop",
                  "Our dark, rich espresso balanced with steamed milk and a light layer of foam",
                  "\$4.99",
                  false
                ),

                _coffeeListCard("assets/starbucks.png",
                "Caffe Latte",
                    "BrownHouse",
                  "Rich, full bodied espresso with bittersweet milk sauce and milk",
                  "\$3.99",
                  false
                ),

              ],
            ),
          ),

          SizedBox(
            height: 15.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Explore nearby",
                style: GoogleFonts.varela(
                  fontSize: 17,
                    color: Color(0xFF473D3A)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "See All",
                  style: GoogleFonts.varela(
                      fontSize: 17,
                      color: Color(0xFFCEC7C4)
                  ),
                ),
              ),

            ],
          ),

          SizedBox(height: 15.0),

          Container(
            height: MediaQuery.of(context).size.height/4.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildImage("assets/coffee.jpg"),
                _buildImage("assets/coffee2.jpg"),
                _buildImage("assets/coffee3.jpg"),

              ],
            ),
          ),

          SizedBox(
            height: 20,
          )

        ],
      ),
    );
  }

  _buildImage(String imPath){
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: MediaQuery.of(context).size.height/4,
        width: MediaQuery.of(context).size.width/3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imPath),
            fit: BoxFit.cover
          )
        ),

      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName, String description, String price, bool isFavorite) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Container(
            height: 300.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Stack(
                    children: [
                      Container(
                          height: 335.0
                      ),
                      Positioned(
                          top: 75.0,
                          child: Container(
                              padding: EdgeInsets.only(left: 10.0, right: 20.0),
                              height: 260.0,
                              width: 225.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xFFDAB68C)
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 60.0,
                                    ),
                                    Text(
                                      shopName + '\'s',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      coffeeName,
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      description,
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          // fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          price,
                                          style: TextStyle(
                                              fontFamily: 'varela',
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF3A4742)),
                                        ),
                                        Container(
                                            height: 40.0,
                                            width: 40.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                                color: Colors.white
                                            ),
                                            child: Center(
                                                child: Icon(Icons.favorite,
                                                    color: isFavorite ? Colors.red: Colors.grey,
                                                    size: 15.0
                                                )
                                            )
                                        )
                                      ],
                                    )
                                  ]
                              )
                          )
                      ),
                      Positioned(
                          left: 60.0,
                          top: 25.0,
                          child: Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imgPath),
                                      fit: BoxFit.contain
                                  )
                              )
                          )
                      )
                    ]
                ),
                SizedBox(height: 20.0),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage()
                      ));
                    },
                    child: Container(
                        height: 50.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFF473D3A)
                        ),
                        child: Center(
                            child: Text(
                                'Order Now',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                )
                            )
                        )
                    )
                )
              ],
            )
        )
    );
  }
}

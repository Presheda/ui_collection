import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicollection/food_concept/details_page.dart';

class FoodConceptMain extends StatefulWidget {
  @override
  _FoodConceptMainState createState() => _FoodConceptMainState();
}

class _FoodConceptMainState extends State<FoodConceptMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/avocado.png"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Good",
                  style: GoogleFonts.montserrat(
                      fontSize: 50,
                      color: Color(0xFF5B8842),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Morning",
                  style: GoogleFonts.montserrat(
                      fontSize: 50,
                      color: Color(0xFF5B8842),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Popular Food",
                  style: GoogleFonts.montserrat(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem(
                    'assets/plate1.png',
                    'Vegan Breakfast ',
                    '\$28'),
                _buildListItem('assets/plate2.png', 'Protein Salad', '\$26')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Best Food",
              style: GoogleFonts.montserrat(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Color(0xFFACBEA3)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage("assets/plate1.png"),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),

          SizedBox(
            height: 20,
          )
        ],
      ),

      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Color(0xFF5AC035)
        ),
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.bookmark_border, color: Colors.white),
            Icon(Icons.search, color: Colors.white),
            Icon(Icons.shopping_basket, color: Colors.white),
            Icon(Icons.person_outline, color: Colors.white)
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String imgPath, String foodName, String price) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double height = screenHeight / 3;
    double width = screenWidth * 0.55;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (c)=> DetailsPage(heroTag: imgPath, foodName: foodName,
            foodPrice: price,)
          )
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 6.0,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5.0)
              ]),
          child: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Color(0xFFACBEA3)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Stack(children: [
                      Hero(
                          tag: imgPath,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.contain),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0))),
                          )),

                      Positioned(
                         bottom: -10,
                          right: 10,
                          child: Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                child: Center(
                                    child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.white
                                ),
                              )
                          )
                      ),

                    ]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 14.0)),
                        SizedBox(height: 3.0),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey,
                                      fontSize: 12.0),
                                ),
                                SizedBox(width: 3.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                              ],
                            ),
                            Text(price,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16.0)),
                          ],
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

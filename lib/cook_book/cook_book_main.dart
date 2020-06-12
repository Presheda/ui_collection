
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicollection/cook_book/recipe_detail.dart';

class CookBook extends StatefulWidget {
  @override
  _CookBookState createState() => _CookBookState();
}

class _CookBookState extends State<CookBook> {



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
          ),

          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/greenapple.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),

          Positioned(
            right: 0,
            top: 75,
            child: Container(
              height: 400,
              width: 335,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(15)
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    spreadRadius: 4.0,
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(0.0, -6)
                  )
                ]
              ),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    child: Text(
                      "Fruit Recipes",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),


                   Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 10, right: 25),
                    child: Text(
                      "Enjoy one of our delicious fruit recipes",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                          color: Color(0xFF9E9E9E)
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 25, bottom: 10),
                    child: Container(
                      height: 275,
                      width: 310,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          _buildFoodCard('Fruit Salad', '248kcal', 'assets/salad.png'),
                          _buildFoodCard('Apple Pie', '124kcal', 'assets/applepie.png'),
                          _buildFoodCard('Green Salad', '241kcal', 'assets/greensalad.png')
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),


          Positioned(
            bottom: 15,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Your Favorites",
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                ),

                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 15),
                  child: Container(
                    width: screenWidth - 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xFF77E8CB)
                                  ),
                                ),

                                Positioned(
                                  top: 25,
                                  left: 60,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/applepie.png"),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                )
                              ],
                            ),

                            SizedBox(height: 15.0,),
                            Text("Apple Pie",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF77E8CB)
                                  ),
                                ),

                                Positioned(
                                  top: 25,
                                  left: 60,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/greensalad.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                )
                              ],
                            ),

                            SizedBox(height: 15.0,),
                            Text("Green Salad",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),


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

  Widget _buildFoodCard(String title, String calCount, String imgPath){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder : (c)=> RecipeDetail(
              heroTag: imgPath,
              calCount: calCount,
              dishName: title,
            )
          )
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left:  20, top: 10, bottom: 10),
        child: Stack(

          children: <Widget>[
            Container(
              height: 275.0,
              width: 200.0,
            ),

            Positioned(
              top: 7,
              child: Container(
                height: 250,
                width: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF20D3D2)
                ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(title,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 7.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                            'A refreshing and incredible testing fruit salad',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(height: 25.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(calCount,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 25.0),
                    ],
                  ),
              ),

            ),

            Positioned(
              right: 0,
              child: Hero(
                tag: imgPath,
                child: Container(
                  height: 110.0,
                  width: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath,),
                      fit: BoxFit.cover
                    )
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

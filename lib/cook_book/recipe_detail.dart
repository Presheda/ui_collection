
 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetail extends StatelessWidget {

  final heroTag, dishName, calCount;

  RecipeDetail({this.heroTag, this.dishName, this.calCount});


  @override
   Widget build(BuildContext context) {

     final screenHeight = MediaQuery.of(context).size.height;
     final screenWidth = MediaQuery.of(context).size.width;


     return Scaffold(
       body: Stack(
         children: <Widget>[
           Container(
             height: 225,
             color: Color(0xFF20D3D2),
           ),

           Positioned(
             left: screenWidth / 2 + 25,
             bottom: screenHeight - 175,
             child: Hero(
               tag: heroTag,
               child: Container(
                 height: 250,
                 width: 250,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage(heroTag),
                     fit: BoxFit.cover
                   )
                 ),
               ),
             ),
           ),

           Align(
             alignment: Alignment.topLeft,
             child: Padding(
               padding: EdgeInsets.only(top: 20),
               child: IconButton(
                 icon: Icon(Icons.arrow_back),
                 color: Colors.white,
                 onPressed: (){
                   Navigator.of(context).pop();
                 },
               ),
             ),
           ),

           Positioned(
             top: 190,
             child: Container(
               height: screenHeight -  190,
               width: screenWidth,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(40),
                   topRight: Radius.circular(40)
                 )
               ),
               child: ListView(
                 children: <Widget>[
                   Padding(
                    padding: EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10
                    ),

                     child: Container(
                       width: screenWidth - 40,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text(
                             dishName,
                             style: GoogleFonts.montserrat(
                               fontSize: 22,
                               fontWeight: FontWeight.w900
                             ),
                           ),

                           Container(
                             height: 40,
                             width: 100.0,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(12),
                               color: Color(0xFF20D3D2)
                             ),

                             child: Center(
                               child: Text(
                                 calCount,
                                 style: GoogleFonts.montserrat(
                                   fontSize: 14,
                                   color: Colors.white,
                                   fontWeight: FontWeight.w900
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),

                   Padding(
                     padding: EdgeInsets.only(
                       left: 20.0, right: 20.0, bottom: 10.0, top: 5
                     ),

                     child: Text(
                       "A refreshin and incredible tasting fruit salad",
                       style: GoogleFonts.montserrat(
                         fontWeight: FontWeight.w400,
                         fontSize: 16,
                         color: Color(0xFFBBBBBB)
                       ),
                     ),
                   ),

                   Padding(
                     padding: EdgeInsets.only(
                       left: 20.0, right: 20.0, bottom: 10.0, top: 5
                     ),

                     child: Text(
                       "Ingredients",
                       style: GoogleFonts.montserrat(
                         fontWeight: FontWeight.w900,
                         fontSize: 16,

                       ),
                     ),
                   ),

                   Padding(
                     padding: EdgeInsets.only(
                         left: 20.0,
                         right: 20.0,
                         bottom: 10.0,
                         top: 5.0
                     ),

                     child: Column(
                       children: <Widget>[
                         _buildIngredientRow('Strawberries',
                             'assets/strawberries.png', '400g', screenWidth),
                         SizedBox(height: 5.0),
                         Container(
                           height: 0.5,
                           color: Colors.grey.withOpacity(0.2),
                         ),
                         SizedBox(height: 5.0),
                         _buildIngredientRow('Blueberries',
                             'assets/blueberries.png', '200g', screenWidth),
                         SizedBox(height: 5.0),
                         Container(
                           height: 0.5,
                           color: Colors.grey.withOpacity(0.2),
                         ),
                         SizedBox(height: 5.0),
                         _buildIngredientRow(
                             'Kiwi', 'assets/kiwi.png', '2', screenWidth),
                         SizedBox(height: 5.0),
                         Container(
                           height: 0.5,
                           color: Colors.grey.withOpacity(0.2),
                         ),
                         SizedBox(height: 5.0),
                         _buildIngredientRow(
                             'Mango', 'assets/mango.png', '1', screenWidth),
                         SizedBox(height: 5.0),
                         Container(
                           height: 0.5,
                           color: Colors.grey.withOpacity(0.2),
                         ),
                         SizedBox(height: 15.0),
                         Text(
                             'Directions',
                             style: TextStyle(
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w900,
                               fontSize: 16.0,
                             )
                         ),


                         SizedBox(height: 15.0),
                         _buildBulletList('Slice all the fruits and place them into a large salad bowl', screenWidth),
                         SizedBox(height: 15.0),
                         _buildBulletList('Combine any additional juices like lime juice or any fresh orange juice', screenWidth)

                       ],
                     ),
                   )


                 ],
               ),
             ),
           )
         ],
       ),
     );

   }

  _buildBulletList(String content, double screenWidth) {
    return Container(
      width: screenWidth,
      child: Row(
        children: <Widget>[
          Container(
            height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
                color: Color(0xFF25BEBD),
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: screenWidth - 60.0,
            child: Text(content,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                ) // color: Color(0xFFBBBBBB)),
            ),
          )

        ],
      ),
    );
  }


   _buildIngredientRow(
       String title, String imgPath, String quantity, double screenWidth){

    return Container(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain
                    )
                  ),
                ),

                SizedBox(width: 25,),
                Text(title,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),


              ],
            ),
          ),

          Text(
            quantity,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Color(0xFFBBBBBB)
            ),
          )
        ],
      ),
    );
   }
 }

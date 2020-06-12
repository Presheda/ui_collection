import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cookie_detail.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: Padding(
        padding: const EdgeInsets.only(top:15),
        child: Container(
              padding: EdgeInsets.only(right: 15),
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height - 50,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[

                  _buildCard('Cookie mint', '\$3.99', 'assets/cookiemint.jpg',
                      false, false, context),
                  _buildCard('Cookie cream', '\$5.99', 'assets/cookiecream.jpg',
                      true, false, context),
                  _buildCard('Cookie classic', '\$1.99',
                      'assets/cookieclassic.jpg', false, true, context),
                  _buildCard('Cookie choco', '\$2.99', 'assets/cookiechoco.jpg',
                      false, false, context)

                ],
              ),
            ),
      )

    );
  }

  Widget _buildCard(String name, String price, String imPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 5, left: 5, right: 5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (c)=> CookieDetail(
              assetPath: imPath,
              cookieName: name,
              cookiePrice: price,
            ))
          );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ]),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Color(0xFFEF7532),
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Color(0xFFEF7532),
                          )
                  ],
                ),
              ),
              Hero(
                tag: imPath,
                child: Container(
                  height: 75.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imPath), fit: BoxFit.contain)),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                price,
                style: GoogleFonts.varela(
                  fontSize: 14,
                  color: Color(0xFFCC8053),
                ),
              ),
              Text(
                name,
                style: GoogleFonts.varela(
                  fontSize: 14,
                  color: Color(0xFF575E67),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 1.0,
                  color: Color(0xFFEBEBEB),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if (!added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      Text(
                        "Add to cart",
                        style: GoogleFonts.varela(
                            color: Color(0xFFD17E50), fontSize: 12.0),
                      )
                    ],
                    if (added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      Text(
                        "3",
                        style: GoogleFonts.varela(
                            color: Color(0xFFD17E50),
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                      Icon(Icons.add_circle_outline,
                          color: Color(0xFFD17E50), size: 12.0),
                    ]
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

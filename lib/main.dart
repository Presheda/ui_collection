import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicollection/burger_app/dashboard_page.dart';
import 'package:uicollection/coffee_app/coffee_main.dart';
import 'package:uicollection/dumplings/dumplings_main.dart';
import 'package:uicollection/food_concept/food_concept_main.dart';
import 'package:uicollection/japan_travel/homepage.dart';
import 'package:uicollection/kayaking/kayaking_main.dart';
import 'package:uicollection/travel_master/travel_master_main.dart';
import 'package:uicollection/wine_app/wine_main.dart';

import 'cook_book/cook_book_main.dart';
import 'cookies_app/cookies_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("UI Collection"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 0.8,
            children: <Widget>[
              buildItems(CookBook(), "Cook Book", context),
              buildItems(KayakingMain(), "Kayaking", context),
              buildItems(BurgerDashboardPage(), "Burger", context),
              buildItems(JapanTravelHomePage(), "Japan Travel", context),
              buildItems(CoffeeHomePageState(), "Coffee", context),
              buildItems(CookiesHomePage(), "Cookies", context),
              buildItems(DumplingsHomePage(), "Dumplings", context),
              buildItems(TravelMasterMain(), "Travel Master", context),
              buildItems(WineAppMain(), "Wine App", context),
              buildItems(FoodConceptMain(), "Food Concept", context),
            ],
          ),
        ));
  }
}

Widget buildItems(Widget home, String name, BuildContext context) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => home));
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            name,
            style:
                GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ),
  );
}

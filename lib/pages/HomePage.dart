import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uh_pm/widgets/RecomendedFruits.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Icon(
                            Icons.menu,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 40,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "images/profile.jpeg",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          width: 400,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFF2C2C2C),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          width: 400,
                          height: 250,
                          child: Image.network(
                            "images/fruit1.png",
                            height: 250,
                            width: 250,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 80, bottom: 20, left: 35),
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ), 
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                              child: Container(
                                color: Color(0xFF2C2C2C).withOpacity(0.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "OFFER",
                                        style: TextStyle(
                                            color: Color(0xFFEEAC5C),
                                            fontSize: 13,
                                            letterSpacing: 10,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "Discount up to 40% Off",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "In honor of World Health Day \nWe'd like to give you this amazing \noffers",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(height: 5),
                                      ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xFFEEAC5C),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Text(
                                            "View Offers",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recomended Fruits",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "View All",
                              style: TextStyle(
                                color: Color(0xFFEEAC5C),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            // Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFEEAC5C),
                              size: 18,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    RecomendedFruit()
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

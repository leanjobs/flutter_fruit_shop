import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uh_pm/pages/DetailFruit.dart';

class RecomendedFruit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .push(MaterialPageRoute(builder: (context) {
                return DetailFruit();
              }));
             
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 160,
                  height: 145,
                  decoration: BoxDecoration(
                    color: Color(0xFF43311B),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150.0),
                      topRight: Radius.circular(150.0),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "images/nanas.png",
                        height: 170,
                        width: 160,
                      ),
                    ),
                    Container(
                      height: 135,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  // size: 10,
                                  color: Color(0xFFEEAC5C),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "FRUIT",
                              style: TextStyle(
                                color: Color(0xFFEEAC5C),
                                fontSize: 15,
                                letterSpacing: 5,
                              ),
                            ),
                            Text(
                              "Pineapple",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Rp. 80.000",
                              style: TextStyle(
                                color: Color(0xFFEEAC5C),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "per kg",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 160,
                  height: 145,
                  decoration: BoxDecoration(
                    color: Color(0xFF43251B),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150.0),
                      topRight: Radius.circular(150.0),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "images/apple2.png",
                        height: 170,
                        width: 160,
                      ),
                    ),
                    Container(
                      height: 135,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  // size: 10,
                                  color: Color(0xFFEEAC5C),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "FRUIT",
                              style: TextStyle(
                                color: Color(0xFFEEAC5C),
                                fontSize: 15,
                                letterSpacing: 5,
                              ),
                            ),
                            Text(
                              "Apple",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Rp. 25.000",
                              style: TextStyle(
                                color: Color(0xFFEEAC5C),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "per kg",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

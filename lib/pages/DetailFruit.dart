import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uh_pm/pages/HomePage.dart';

class DetailFruit extends StatelessWidget {
  const DetailFruit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C2C2C),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                child: Container(
                  margin: EdgeInsets.only(top: 400),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        topRight: Radius.circular(200)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size: 40,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color(0XFF494949),
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Text(
                      "FRUIT",
                      style: TextStyle(
                        color: Color(0xFFEEAC5C),
                        letterSpacing: 10,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "Pineapple",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Image.asset(
                      "images/nanas.png",
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rp. 80.000",
                              style: TextStyle(
                                color: Color(0xFFEEAC5C),
                                fontSize: 45,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFEEAC5C),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFEEAC5C),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFEEAC5C),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFEEAC5C),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFEEAC5C),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "per kg",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color(0XFF494949),
                              borderRadius: BorderRadius.circular(40)),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 50,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Color(0XFF494949),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 50,
                                color: Color(0xFFEEAC5C),
                              ),
                            ),
                            Text(
                              "Quality \nAssurance",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Color(0XFF494949),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(
                                Icons.directions_car,
                                size: 50,
                                color: Color(0xFFEEAC5C),
                              ),
                            ),
                            Text(
                              "Fast \nDelivery",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Color(0XFF494949),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(
                                Icons.flatware_outlined,
                                size: 50,
                                color: Color(0xFFEEAC5C),
                              ),
                            ),
                            Text(
                              "Best-in \nTaste",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0XFF494949),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.minimize,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "7",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 70,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEAC5C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Go to cart",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 30,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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

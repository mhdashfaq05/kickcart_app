import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kick_cart/cart_Screen.dart';
import 'package:kick_cart/const/colourconst.dart';
import 'package:kick_cart/const/imageconst.dart';

import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List A = [
    {"sections": "Life Style", "count": "23 items"},
    {"sections": "Running", "count": "32 items"},
    {"sections": "Tennis", "count": "12 items"},
    {"sections": "Collection", "count": "19 items"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.home,
      appBar: AppBar(
        backgroundColor: ColorConst.home,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Center(
            child: SvgPicture.asset(
          ImageConst.logo,
          width: 32,
        )),
        actions: [

          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
          },
            child: SvgPicture.asset(
              ImageConst.shoppingBag,
              width: 22,
            ),
          ),
          SizedBox(
            width: 09,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    // color: Colors.red,
                    width: w * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "New Collections",
                              style: GoogleFonts.merriweather(
                                  color: Colors.white, fontSize: w * 0.045),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Explore the new collections of your set",
                              style: GoogleFonts.merriweather(
                                  color: Colors.grey, fontSize: w * 0.025),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.greenAccent,
                    width: w * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageConst.offerImage,
                          width: w * 0.9,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: w * 1.46,
            height: h * 0.079,
            //color: Colors.red,
            child: ListView.separated(
              itemCount: A.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(w * 0.02),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: w * 0.26,
                          height: h * 0.06,
                          //color: Colors.green,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(A[index]["sections"],
                                      style: GoogleFonts.merriweather(
                                        fontSize: w * 0.045,
                                        color: A == index
                                            ? Colors.white
                                            : Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(A[index]["count"],
                                      style: GoogleFonts.merriweather(
                                          fontSize: w * 0.03,
                                          color: selectedIndex == index + 3
                                              ? Colors.white
                                              : Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: w * 0.012,
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 45, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: h * 0.225,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                        color: ColorConst.containerColour,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //SizedBox( height: h*0.01,),

                          Container(
                            width: w * 0.375,
                            height: h * 0.21,
                            //color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: w * 0.3,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(ImageConst.starRatting),
                                      SvgPicture.asset(ImageConst.addBag),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(ImageConst.redShoes),
                                      width: w * 0.29,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      " Adidas Blue",
                                      style: GoogleFonts.merriweather(
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      " 399.00",
                                      style: GoogleFonts.merriweather(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              itemCount: 6,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),
    );
  }
}

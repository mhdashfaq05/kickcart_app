import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kick_cart/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'const/colourconst.dart';
import 'const/imageconst.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  List A = [
    {"size": "6"},
    {"size": "7"},
    {"size": "8"},
    {"size": "9"},
    {"size": "10"},
    {"size": "11"},
  ];
  int initialindex = 0;
  List images = [
    {
      "image": ImageConst.redShoes,
    },
    {
      "image": ImageConst.redShoes,
    },
    {
      "image": ImageConst.redShoes,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.home,
      appBar: AppBar(
        backgroundColor: ColorConst.home,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Center(
            child: SvgPicture.asset(
          ImageConst.logo,
          width: 35,
        )),
        actions: [
          SvgPicture.asset(
            ImageConst.shoppingBag,
            width: 20,
          ),
          SizedBox(
            width: 09,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: w * 0.05),
                child: CarouselSlider(
                  items: List.generate(
                    images.length,
                    (index) => Container(
                        height: w * 0.5,
                        width: w * 0.8,
                        decoration: BoxDecoration(
                          //color: Colors.red,

                          borderRadius: BorderRadius.circular(w * 0.04),
                        ),
                        child: Image(
                          image: AssetImage(images[index]['image']),
                          fit: BoxFit.cover,
                        )),
                  ),
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,

                    // autoPlay: true,
                    //  autoPlayInterval: Duration(seconds: 2),
                    //autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,

                    onPageChanged: (index, reason) {
                      initialindex = index;
                      setState(() {});
                      print(index);
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(w * 0.03),
                child: AnimatedSmoothIndicator(
                  activeIndex: initialindex,
                  count: 3,
                  effect: WormEffect(
                      dotWidth: w * 0.02,
                      dotHeight: w * 0.02,
                      activeDotColor: Colors.white),
                ),
              ),
            ],
          ),
          Container(
            height: h * 0.55,
            width: w * 1,
            decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(ImageConst.wallPaper), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.blueGrey,
                  width: w * 0.8,
                  height: h * 0.48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Adidas Blue Max 280",
                                  style: GoogleFonts.merriweather(
                                      fontSize: w * 0.035,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      ImageConst.starRatting,
                                      width: w * 0.04,
                                    ),
                                    Text(
                                      "  4.1",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: w * 0.04,
                                    ),
                                    SvgPicture.asset(
                                      ImageConst.bookMark,
                                      width: w * 0.04,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Men’s Shoes",
                                  style: GoogleFonts.merriweather(
                                      color: Colors.grey, fontSize: w * 0.025),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                        "Donec odio purus, viverra in euismod eu, molestie non dui.\n"
                        "Duis tempor velit non leo iaculis, convallis volutpat leo semper.",
                        style: GoogleFonts.merriweather(
                            color: Colors.white, fontSize: w * 0.023),
                      ),
                      Row(
                        children: [
                          Text(
                            "Size :",
                            style:
                                GoogleFonts.merriweather(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        height: h * 0.050,
                        //color: Colors.red,
                        child: Row(
                          children: [
                            ListView.separated(
                              itemCount: A.length,
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: h * 0.055,
                                      width: w * 0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.black26,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(w * 0.02))),
                                      child: Center(
                                          child: Text(
                                        A[index]["size"],
                                        style: GoogleFonts.merriweather(
                                            color: Colors.white),
                                      )),
                                    )
                                  ],
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return SizedBox(
                                  width: w * 0.040,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.yellow,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Price :",
                                style: GoogleFonts.merriweather(
                                    color: Colors.white),
                              ),
                              Text("399.00",
                                  style: GoogleFonts.merriweather(
                                      color: Colors.white))
                            ],
                          ),
                          Container(
                            height: h * 0.04,
                            width: w * 0.27,
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(w * 0.03))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(ImageConst.shoppingBag),
                                Text(
                                  "Add To Cart",
                                  style: GoogleFonts.merriweather(
                                      color: Colors.white, fontSize: w * 0.025),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

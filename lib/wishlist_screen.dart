import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'const/colourconst.dart';
import 'const/imageconst.dart';
import 'main.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
              child: Text(
            "My Wishlist",
            style: GoogleFonts.merriweather(
                color: Colors.white, fontSize: w * 0.04),
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * 0.82,
                // color: Colors.red,
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: w * 0.9,
                          height: h * 0.15,
                          decoration: BoxDecoration(
                              color: ColorConst.containerColour,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(w * 0.05))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage(ImageConst.redShoes),
                                    width: w * 0.25,
                                  ),
                                  Text("Total Amount",
                                      style: TextStyle(fontSize: w * 0.035)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Adidas Blue",
                                    style: GoogleFonts.merriweather(
                                        fontSize: w * 0.037),
                                  ),
                                  Text("red shoes",
                                      style: TextStyle(fontSize: w * 0.035)),
                                  Row(
                                    children: [
                                      Text("Qyt: 1",
                                          style:
                                              TextStyle(fontSize: w * 0.035)),
                                      Text("Size: 7 UK",
                                          style:
                                              TextStyle(fontSize: w * 0.035)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: h * 0.03,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: h * 0.001,
                                  ),
                                  Icon(Icons.delete_forever),
                                  Text("399")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

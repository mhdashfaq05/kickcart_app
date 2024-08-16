import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kick_cart/const/colourconst.dart';
import 'package:kick_cart/wishlist_screen.dart';

import 'main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.home,
      appBar: AppBar(
        backgroundColor:  ColorConst.home,
      ),
      body: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: h*0.5,
            width: w*0.9,
           // color: Colors.green,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Hey! ******",style: GoogleFonts.merriweather(fontSize: w*0.04,color: Colors.white),),
                  ],
                ),
                Row(
                  children: [
                    Text("email.com",style: TextStyle(fontSize: w*0.03,color: Colors.white),),
                  ],
                ),
              Divider(color: ColorConst.containerColour,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistScreen(),));
                    },
                    child: Container(
                      height: h*0.045,
                      width: w*0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(w*0.01)),
                        color: ColorConst.containerColour,
                      ),
                               child: Center(child: Text("wislist",style: GoogleFonts.merriweather(color: Colors.black,fontSize: w*0.04),),),
                    ),
                  ),
                  Container(
                    height: h*0.045,
                    width: w*0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(w*0.01)),
                      color: ColorConst.containerColour,
                    ),
                             child: Center(child: Text("Order",style: GoogleFonts.merriweather(color: Colors.black,fontSize: w*0.04),),),
                  ),
                ],
              ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

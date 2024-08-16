import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kick_cart/cart_Screen.dart';
import 'package:kick_cart/home_screen.dart';
import 'package:kick_cart/item_Screen.dart';
import 'package:kick_cart/profile_Screen.dart';
import 'package:kick_cart/wishlist_screen.dart';

import 'const/colourconst.dart';



class Bottampage extends StatefulWidget {
  const Bottampage({super.key});

  @override
  State<Bottampage> createState() => _BottampageState();
}

class _BottampageState extends State<Bottampage> {
  List page=[
    HomeScreen(),
    WishlistScreen(),
    ProfileScreen(),
    CartScreen(),

    // profile(),
    // ProductDetails(),

  ];

  List<Widget> As = [
    Icon(
      Icons.home,
      color: ColorConst.containerColour,
    ),
    Icon(
      Icons.credit_card,
      color: ColorConst.containerColour,
    ),
    Icon(
      Icons.person,
      color: ColorConst.containerColour,
    ),
    Icon(
      Icons.shopping_cart,
      color: ColorConst.containerColour,
    ),

  ];
  int selectedIndex=0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(

        color: Colors.transparent,
        backgroundColor: ColorConst.home,

        items: As,
        onTap: (value) {
          selectedIndex=value;
          setState(() {

          });
        },

      ),
      body:page[selectedIndex] ,
    );
  }
}

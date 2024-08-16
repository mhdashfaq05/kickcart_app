import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kick_cart/const/imageconst.dart';

import 'const/colourconst.dart';
import 'main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.home,
      appBar: AppBar(
        backgroundColor: ColorConst.home,
        // leading: InkWell(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Icon(
        //     Icons.arrow_back_ios_new_outlined,
        //     color: Colors.white,
        //     size: 20,
        //   ),
        // ),

        title: Center(
            child:Text("My Cart",style: GoogleFonts.merriweather(color: Colors.white,fontSize: w*0.04),
            )),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h*0.82,
             // color: Colors.red,
              child: Column(
                children: [
                  SizedBox(height: h*0.02,),
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: w*0.9,
                        height: h*0.15,
                        decoration: BoxDecoration(
                          color: ColorConst.containerColour,
                          borderRadius: BorderRadius.all(Radius.circular(w*0.05))
                        ),
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(image: AssetImage(ImageConst.redShoes)),
                            Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Adidas Blue",style: GoogleFonts.merriweather(fontSize: w*0.035),),
                                Text("399.00",style: GoogleFonts.merriweather(fontSize: w*0.035)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        count++;
                                        setState(() {});
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: w*0.03,
                                        child: Icon(Icons.add),
                                      ),
                                    ),
                                    SizedBox(width: w*0.02,),
                                    Text("$count",style: TextStyle(fontSize: 20),),
                                    SizedBox(width: w*0.02,),
                                    InkWell(
                                      onTap: () {
                                        count <= 1 ? count = 1 : count--;
                                        setState(() {});
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: w*0.03,
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                    // InkWell(
                                    //   onTap: () {
                                    //     showDialog(
                                    //       context: context,
                                    //       barrierDismissible: false,
                                    //       builder: (context) {
                                    //         return AlertDialog(
                                    //           actionsAlignment: MainAxisAlignment.spaceEvenly,
                                    //           title: Text("Sure?"),
                                    //           actions: [
                                    //             InkWell(
                                    //                 onTap: () {
                                    //                   Navigator.pop(context);
                                    //                   count = 0;
                                    //                   setState(() {});
                                    //                 },
                                    //                 child:
                                    //                 Text("Yes", style: TextStyle(fontSize: 20))),
                                    //             InkWell(
                                    //                 onTap: () {
                                    //                   Navigator.pop(context);
                                    //                 },
                                    //                 child: Text("NO", style: TextStyle(fontSize: 20)))
                                    //           ],
                                    //         );
                                    //       },
                                    //     );
                                    //
                                    //     setState(() {});
                                    //   },
                                    //   child: CircleAvatar(
                                    //     child: Icon(Icons.refresh_sharp),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.delete,size: w*0.1,)
                          ],
                        ),
        
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Container(
               height: 60.0,
               color: Colors.blue,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   Text(
                     'Total: \$100.00',
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                   ),
                   ElevatedButton(
                     onPressed: () {
                       // Add your onPressed code here!
                     },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.green,
                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                       textStyle: TextStyle(fontSize: 18),
                     ),
                     child: Text('Place Order'),
                   ),
                 ],
               ),
             ),
        
        ],
        ),
      )

      );

  }
}

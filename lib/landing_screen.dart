import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kick_cart/const/imageconst.dart';
import 'package:kick_cart/feature/user_auth/screens/signIn_screen.dart';
import 'package:kick_cart/feature/user_auth/screens/signUp_screen.dart';
import 'bottom_page.dart';
import 'main.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w * 1,
        padding: const EdgeInsets.only(top: 20, bottom: 0.01),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage(ImageConst.landingPage), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
                height: h * 0.556,
                //color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      ImageConst.logo,
                      width: w * 0.4,
                    ),
                  ],
                )),
            Container(
              //color: Colors.red,
              height: h * 0.17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SigninScreen(),));
                },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.merriweather(
                        fontSize: 12, color: Colors.white),
                  ),
                ),
                SizedBox(width: w * 0.05),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                  },
                  child: Container(
                    height: h * 0.035,
                    width: w * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(w * 3),
                    ),
                    child: Center(
                        child: Text(
                      "Sign Up",
                      style: GoogleFonts.merriweather(fontSize: 12),
                    )),
                  ),
                )
              ],
            ),
            Container(
              //color: Colors.red,
              height: h * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Bottampage(),
                          ));
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.merriweather(
                          fontSize: 12, color: Colors.white),
                    )),
                const Icon(
                  Icons.navigate_next_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: w * 0.03,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/colourconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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

      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Text("Welcome",style: GoogleFonts.merriweather(fontSize: w*0.05,color: Colors.white),),
                    Text("Login to access your account",style: GoogleFonts.merriweather(fontSize: w*0.025,color: Colors.grey),),
                  ],
                ),
                SizedBox(height: h*0.05,),
                Container(
                  height: h*0.05,
                  width: w*0.7,
                
                  decoration: BoxDecoration(
                    color: ColorConst.containerColour,
                    borderRadius: BorderRadius.all(Radius.circular(w*0.03))
        
                    
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(ImageConst.googleSvg),
                      Text("Login with Google", style: GoogleFonts.merriweather(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(height: h*0.04,),
                Container(
                  height: h*0.05,
                  width: w*0.7,
        
                  decoration: BoxDecoration(
                    color: ColorConst.containerColour,
                    borderRadius: BorderRadius.all(Radius.circular(w*0.03))
        
        
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(ImageConst.appleSvg),
                      Text("Login with Apple", style: GoogleFonts.merriweather(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(height: h*0.04,),
                Text("Or",style: GoogleFonts.merriweather(color: Colors.white),)
        
        
              ],
            ),
            Container(
              height: h * 0.595,
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
                        Text("***Continue With Email***",style: GoogleFonts.merriweather(color: Colors.white),),
                        SizedBox(
                          height: w * 0.16,
                          width: w * 0.95,
                          // color: Colors.blue,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            //controller: emailController,
                            style:
                            const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(w * 0.04),
                                borderSide: const BorderSide(
                                    color: Colors.grey),
                              ),
                              label: const Text("Enter your email"),
                              labelStyle: const TextStyle(
                                  color: Colors.grey),
                              border: const OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white),
                                  borderRadius:
                                  BorderRadius.circular(w * 0.04)),
                              hintStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: w * 0.22,
                          width: w * 0.95,
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                               // controller: passwordController,
                                style:
                                const TextStyle(color:Colors.white),
                                //controller: name,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(w * 0.04),
                                    borderSide: const BorderSide(
                                        color: Colors.grey),
                                  ),
                                  label: const Text("Enter your Password"),
                                  labelStyle: const TextStyle(
                                      color: Colors.grey),
                                  border: const OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white),
                                      borderRadius:
                                      BorderRadius.circular(w * 0.04)),
                                  hintStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: h*0.01,),
                              Row(
                                children: [
                                  Text("Forgot password?",style: GoogleFonts.merriweather(fontSize: w*0.03),),
                                ],
                              ),
                            ],
                          ),

                        ),

                        Container(
                          width: w*0.5,
                          height: w * 0.12,
                          decoration: BoxDecoration(
                            color: ColorConst.home,
                             borderRadius: BorderRadius.all(Radius.circular(w*0.03))

                          ),
                          child: Center(child: Text("Login",style: GoogleFonts.merriweather(color: Colors.white),)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

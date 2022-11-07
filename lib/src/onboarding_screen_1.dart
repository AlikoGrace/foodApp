import 'package:flutter/material.dart';
import 'package:new_zap/utils/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              // color: Color(0xFFf87128),
              child: Image.asset(
                "assets/images/login_bg.png",
                fit:BoxFit.fill,),

            ),

            Align(
              alignment: Alignment(0.00,-0.50),
              child: Image.asset("assets/images/onboarding1.png"),
            ),
            Align(
              alignment: Alignment(0.00, 0.60),
              child:Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.3,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child:Column(
                  children: [
                    Flexible(child:
                    Text("Order food instantly from your  your phone ",
                      style: TextStyle(fontFamily:"Gilroy",fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    ),
                     SizedBox(height: 100,),

                  ],
                )







              ) ,
            ),


          ],
        ),
      ),
    );

  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "assets/images/splashicons.png",
                fit:BoxFit.fill,),

            ),
           
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/MM.png"),
            )
          ],
        ),
      ),
    );


  }
}

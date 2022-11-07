import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_zap/src/home_screen.dart';
import 'package:new_zap/utils/colors.dart';

import 'onboarding_content.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex=0;
  late PageController _controller;

  @override
  void initState(){
    _controller =PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
           Expanded(
               child:PageView.builder(
                 controller:  _controller,
                   itemCount: contents.length,
                   onPageChanged: (int index){
                   currentIndex =index;
                   },
                 itemBuilder: (_, i) { 
                   return Padding(
                       padding: EdgeInsets.all(60),
                     child: Column(
                       children: [
                          Image.asset(
                           contents[i].image,
                            height: 300,
                          ),

                         SizedBox(height: 20,),
                         Text(
                           contents[i].title,
                              style: TextStyle(
                                fontSize: 24,

                              ),
                           textAlign: TextAlign.center,
                         ),

                       ],
                     ),
                   );
                 },

               )
           ),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: List.generate(
                  contents.length,
                       (index) => buildDot(index,context)
               ),
             ),
           ),
           Container(
             height: 60,
             margin: EdgeInsets.all(40),
             width: double.infinity,
             child: ElevatedButton(
               child: Text(
                   currentIndex == contents.length - 1 ? "Continue" : "Next"),
               onPressed: () {
                 if (currentIndex == contents.length - 1) {
                   Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(
                       builder: (_) => HomeScreen(),
                     ),
                   );
                 }
                 _controller.nextPage(
                   duration: Duration(milliseconds: 100),
                   curve: Curves.bounceIn,
                 );
               },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20),
                  ))
                ),

             ),
           )
         ],
      ),
    );
  }
  Container buildDot(int index, BuildContext context){
    return Container(
      height: 10,
      width: currentIndex==index? 25:10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.mainColor,
      ),
    );
  }
}

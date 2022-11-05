
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_zap/src/theme.dart';
import 'home_screen.dart';
//it's a stateless widget here because it will just be calling
//other widgets, nothing changes
//this will be our main root widget
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (_,beat)=>MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food delivery App",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      home: HomeScreen(),
    ));
  }
}

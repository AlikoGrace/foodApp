import 'package:flutter/material.dart';
import 'package:new_zap/utils/colors.dart';
import 'package:new_zap/widgets/appBarWidget.dart';
import 'package:new_zap/utils/scaler.dart';
import 'package:new_zap/widgets/appbar_4.dart';
import 'package:new_zap/widgets/categoriesWidget.dart';

import '../widgets/restaurant_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textStyle= TextStyle(fontSize: 10,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    Sizer size = Sizer(context: context);
    return Scaffold(
      //scaffold returns a single screen
      body: ListView(
        children: <Widget> [
          //AppBarWidget2(),
          // intro information
          RealAppBar(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20,top: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hey Esinam",style: TextStyle(
                          fontSize:15 ,
                          fontWeight:
                          FontWeight.w400
                      ),
                      ),
                      SizedBox(height: 10),
                      Text("What will you ", style: textStyle,),
                      SizedBox(height: 5.0),
                      Text("Eat today?",style: textStyle,),
                    ],
                  ),

                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Icon(Icons.waving_hand,
                    color: Colors.brown[700],
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          // search bar
          Padding(

              padding:EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,

              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      offset: Offset(0,3),
                    )
                  ]

                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Container(
                        height: 50,
                        width: 300,
                        child:Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "search for any food you like",
                            border: InputBorder.none,

                          ),
                        ),
                      )
                      ),
                      Icon(Icons.filter_list)
                    ],

                  ),
                ),
              ),
          ),
          //categories
          Padding(padding:
          EdgeInsets.only(
            top: 20,
            left: 20,
          ),
             child: Text("Categories",
               style: TextStyle(fontWeight: FontWeight.bold,
             fontSize: 20),
             ),
          ),
          CategoriesWidget(),
          Padding(padding:
          EdgeInsets.symmetric(
              horizontal: 15,
            vertical: 5,
          ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Restaurants",
                    style:TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  TextButton(
                      onPressed:(){},
                      child: Text("View all",style: TextStyle(fontSize: 15,color: AppColors.mainColor),),
                  )
                ],
              ),

          ),

          RestaurantsWidget(),


        ],
      ),
    );
  }
}

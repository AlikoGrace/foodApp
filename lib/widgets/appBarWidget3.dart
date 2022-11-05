import 'package:flutter/material.dart';

class AppBarWidget3 extends StatelessWidget {
  const AppBarWidget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(

        padding:EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25, ),
      child: AppBar(
        leading: Builder(
          builder: (BuildContext context){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color:Colors.white ,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0,3),
                          )
                        ]

                    ),
                    child:Icon(Icons.menu, color:  Color(0xFFf87217),) ,
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color:Colors.white ,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child:Icon(Icons.notifications, color:  Color(0xFFf87217)) ,
                  ),
                )
              ],
            
            );
          },
        ),
      ),
    );
  }
}

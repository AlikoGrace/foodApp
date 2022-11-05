import 'package:flutter/material.dart';
import 'package:new_zap/utils/colors.dart';
import 'package:new_zap/utils/scaler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RealAppBar extends StatelessWidget {
  const RealAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Sizer size = Sizer(context: context);
    return Container(
      color: AppColors.mainColor,
      height: size.ch(15),
      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
          onTap: (){},
      child: Container(
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0,3),
              )
            ]
        ),child:Icon(Icons.menu,color: AppColors.mainColor,),),),
        Column(children: [
          Icon(Icons.location_on,color: Colors.white,size: 30,),
          Text("Brunei-Complex, KNUST",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize:15.sp),
          )
        ],),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color:Colors.white ,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    )
                  ]
              ),
              child:Icon(Icons.notifications, color:  Color(0xFFf87217)) ,
            ),
          )
      ],),
    );
  }
}

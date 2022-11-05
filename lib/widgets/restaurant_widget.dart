import 'package:flutter/material.dart';
import 'package:new_zap/utils/scaler.dart';

class RestaurantsWidget extends StatefulWidget {
  const RestaurantsWidget({Key? key}) : super(key: key);

  @override
  State<RestaurantsWidget> createState() => _RestaurantsWidgetState();
}

class _RestaurantsWidgetState extends State<RestaurantsWidget> {
  @override
  Widget build(BuildContext context) {
    Sizer size = Sizer(context: context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 192.0,
              width: size.cw(90),
              child: Image.asset("assets/images/jollof.png",fit: BoxFit.cover,),
              decoration: BoxDecoration(),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 75.0,
              width: size.cw(90),
              decoration: BoxDecoration(
                color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      offset: Offset(0,3),
                    )
                  ]

              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.backround,
    required this.icon,
    this.showbadge = false ,
  }) : super(key: key);

  final Color backround;
  final IconData icon;
  final bool showbadge;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(          
            height: 35,
            width: 35,
            decoration:  BoxDecoration(color: backround,shape: BoxShape.circle),
            child:  Icon(icon,color: Colors.white,size: 16,),
          ),
          if(showbadge) Positioned(
            top: 0,
            right: 0,
            child:  Container(
              width: 10,
              height: 10,
              decoration:  BoxDecoration(
                  color: Colors.red,shape: BoxShape.circle,
                  border: Border.all(width: 2,color: Colors.white )
                ),
            )
          )
        ],
      ),
    );
  }
}

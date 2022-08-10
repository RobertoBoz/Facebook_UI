/*
import 'package:flutter/material.dart';
class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.asset, required this.size}) : super(key: key);

  final String asset;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
     child: ClipRRect(
        borderRadius: BorderRadius.circular(
          size * 0.5
        ),
        child: Image.asset(
          asset,
          width: size,
          height: size,
        ),
      ),
    );
    
  }
}*/



import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.asset, required this.size,this.borderWidth = 0}) : super(key: key);

  final String asset;
  final double size;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(width: borderWidth,color:Colors.white ),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(asset,),
          fit: BoxFit.contain,
        )
      ),

    );
    
  }
}
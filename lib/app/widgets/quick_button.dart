import 'package:facebook_ui/app/widgets/circule_button.dart';
import 'package:flutter/material.dart';

class QuickButton extends StatelessWidget {
  const QuickButton({
    Key? key, required this.label, required this.backgrondIcon, required this.backgrond, required this.icon,
  }) : super(key: key);

  final String label; 
  final Color backgrondIcon;
  final Color backgrond;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      
     padding: const EdgeInsets.symmetric(vertical: 2).copyWith(right: 20),
     decoration:  BoxDecoration(
       color: backgrond,
       borderRadius: BorderRadius.circular(25)
     ),
     child: Row(
      mainAxisSize: MainAxisSize.min,
       children:  [
          CircleButton(icon: icon,backround: backgrondIcon,),
         const SizedBox(width: 10,),
          Flexible(child: Text(label, style: TextStyle(color:backgrondIcon),)),

       ],

     ),
        );
  }
}

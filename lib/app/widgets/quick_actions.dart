import 'package:facebook_ui/Theme/custom_icons.dart';
import 'package:facebook_ui/app/widgets/quick_button.dart';

import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        
        children: const [
            QuickButton(backgrond: Color(0xffebffe8), backgrondIcon: Color(0xffacd8a3), icon: CustomIcons.photos, label: 'Gallery',),
             SizedBox(width: 10,),
            QuickButton(backgrond: Color(0xffe9f2ff), backgrondIcon: Color(0xff85affb), icon: CustomIcons.userFriends, label: 'Tag Driends',),
            SizedBox(width: 10,),
            QuickButton(backgrond: Color(0xfffde9e8), backgrondIcon: Color(0xfff9a897), icon: CustomIcons.videoCamera, label: 'Live',),
        ],
      ),
    );
    
  }
}

/*
class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10).copyWith(left: 10),
      child: Wrap(
        spacing: 15,
        runSpacing: 10,              
        children: const [
            QuickButton(backgrond: Color(0xffebffe8), backgrondIcon: Color(0xffacd8a3), icon: CustomIcons.photos, label: 'Gallery',),
            QuickButton(backgrond: Color(0xffe9f2ff), backgrondIcon: Color(0xff85affb), icon: CustomIcons.userFriends, label: 'Tag Driends',),
            QuickButton(backgrond: Color(0xfffde9e8), backgrondIcon: Color(0xfff9a897), icon: CustomIcons.videoCamera, label: 'Live',),
        ],
      ),
    );
    
  }
}

*/

/*
import 'package:facebook_ui/Theme/custom_icons.dart';
import 'package:facebook_ui/app/widgets/quick_button.dart';

import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10).copyWith(left: 10),
      child: Wrap(
        spacing: 15,
        runSpacing: 10,              
        children: const [
            QuickButton(backgrond: Color(0xffebffe8), backgrondIcon: Color(0xffacd8a3), icon: CustomIcons.photos, label: 'Gallery',),
            QuickButton(backgrond: Color(0xffe9f2ff), backgrondIcon: Color(0xff85affb), icon: CustomIcons.userFriends, label: 'Tag Driends',),
            QuickButton(backgrond: Color(0xfffde9e8), backgrondIcon: Color(0xfff9a897), icon: CustomIcons.videoCamera, label: 'Live',),
        ],
      ),
    );
    
  }
}*/

//0xffacd8a3
//0xffebffe8



//0xffacd8a3
//0xffebffe8


// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:facebook_ui/app/widgets/quick_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:facebook_ui/Theme/custom_icons.dart';
import 'package:facebook_ui/app/widgets/WhatIsOnYourMind.dart';
import 'package:facebook_ui/app/widgets/circule_button.dart';

class FacebookiU extends StatelessWidget {
  const FacebookiU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.transparent,
        elevation: 0,                
        leading: SvgPicture.asset('assets/images/logos/facebook.svg',color:  const Color(0xff02374E1),),
        leadingWidth: 150,
        actions: const  [
          
           CircleButton(backround: Color(0xFFBFBFBF),icon: CustomIcons.search,),
           SizedBox(width: 15,),
           CircleButton(backround: Color(0xffFE7574),icon: CustomIcons.bell,),
           SizedBox(width: 15,),
           CircleButton(backround: Color(0xff7BBAFF),icon: CustomIcons.userFriends, showbadge: true,),
           SizedBox(width: 15,),
           CircleButton(backround: Color(0xff71C86E4),icon: CustomIcons.messenger,),
           SizedBox(width: 15,),
        ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15,).copyWith(top:20),
          children: const [
             WhatIsOnYourMind(),
             SizedBox(height: 25,),
             QuickActions()
          ],
        ),
    );
  }
}



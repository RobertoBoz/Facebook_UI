import 'package:facebook_ui/app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
 const EdgeInsets.symmetric(horizontal: 15,).copyWith(top:20),
      child: Row(
        children: const  [
          Avatar(asset: 'https://scontent.fmex27-1.fna.fbcdn.net/v/t1.6435-9/160628920_106453391524800_516720887702816188_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=0B10QlupfAEAX--iXsz&_nc_ht=scontent.fmex27-1.fna&oh=00_AT_OynMJrifZoNCP1y7S9jGw2zl_PX69uAUsma5E-YKVWA&oe=63599677', size: 50),
          SizedBox(width: 20),
          Flexible(child: Text('What´s on your mind',style: TextStyle(color: Colors.grey))),
        ],
      ),
    );
  }
}


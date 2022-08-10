import 'package:facebook_ui/app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const  [
        Avatar(asset: 'assets/images/users/1.jpg', size: 50),
        SizedBox(width: 20),
        Flexible(child: Text('What´s on your mind',style: TextStyle(color: Colors.grey))),
      ],
    );
  }
}


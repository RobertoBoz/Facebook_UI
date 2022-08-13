// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:facebook_ui/app/widgets/quick_actions.dart';
import 'package:facebook_ui/app/widgets/stories.dart';
import 'package:facebook_ui/data/models/publications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:faker/faker.dart';
import 'package:facebook_ui/Theme/custom_icons.dart';
import 'package:facebook_ui/app/widgets/WhatIsOnYourMind.dart';
import 'package:facebook_ui/app/widgets/circule_button.dart';

import 'widgets/publications_items.dart';

class FacebookiU extends StatelessWidget {
  const FacebookiU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publicationsList = <Publications>[];

    for(int i = 0;i<50;i++){

      const reactions = Reaction.values;
      final reactionsIndex = faker.randomGenerator.integer(reactions.length-1);


      final publication = Publications(
          user: User(avatar: faker.image.image(), username: faker.person.name(),),
          title: faker.lorem.sentence(), 
          createdAt: faker.date.dateTime(), 
          imageUrl: faker.image.image(),
          commentsCount: faker.randomGenerator.integer(50000), 
          shareCount: faker.randomGenerator.integer(50000), 
          currentReaction: Reaction.values[reactionsIndex], 
        );
      publicationsList.add(publication);
    }



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

          children:  [
             const WhatIsOnYourMind(),
             const SizedBox(height: 25,),
             const QuickActions(),
             const SizedBox(height: 25,),
             const Stories(),
             const SizedBox(height: 20,),
             ListView.builder( 
              physics: const NeverScrollableScrollPhysics(), 
              shrinkWrap: true,
                itemCount: publicationsList.length,
                itemBuilder: (context, index) => PublicationsItem(publications: publicationsList[index],) 
              )
          ],
        ),
    );
  }
}



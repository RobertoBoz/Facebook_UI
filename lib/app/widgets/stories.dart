import 'package:facebook_ui/app/widgets/avatar.dart';
import 'package:facebook_ui/app/widgets/story_item.dart';
import 'package:facebook_ui/data/models/story.dart';
import 'package:flutter/material.dart' ;

final _stories =[
  Story(
    bg: 'assets/images/wallpapers/1.jpeg', 
    avatar: 'assets/images/users/1.jpg',
    username: 'Juan Lopez',
  ),
  Story(
    bg: 'assets/images/wallpapers/2.jpeg', 
    avatar: 'assets/images/users/2.jpg',
    username: 'Raul Smit',
  ),
  Story(
    bg: 'assets/images/wallpapers/3.jpeg', 
    avatar: 'assets/images/users/3.jpg',
    username: 'Megan Lopez',
  ),
  Story(
    bg: 'assets/images/wallpapers/4.jpeg', 
    avatar: 'assets/images/users/4.jpg',
    username: 'Vane Mejia',
  ),
  Story(
    bg: 'assets/images/wallpapers/5.jpeg', 
    avatar: 'assets/images/users/5.jpg',
    username: 'Yulisa Duran',
  ),
  Story(
    bg: 'assets/images/wallpapers/6.jpeg', 
    avatar: 'assets/images/users/6.jpg',
    username: 'Saulo hernandez',
  )  
];

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) { 
          final story = _stories[index];

          return StoryItem(
            story: story,
            isFirst: index == 0,
          );

         },
        itemCount: _stories.length,
        
      ),
    );
    
  }
}


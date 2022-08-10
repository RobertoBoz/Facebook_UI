import 'package:facebook_ui/app/widgets/avatar.dart';
import 'package:facebook_ui/data/models/story.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.story,
    required this.isFirst ,
  }) : super(key: key);

  final Story story;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(
        right: 12,
        left: isFirst ? 20:0
      ),
      height: 160,
      width: 90,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [                      
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(                                        
                    height: 170-20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(story.bg),fit: BoxFit.cover)
                    ),
                    
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    asset: story.avatar,
                    size: 50,
                    borderWidth: 3,
                  ),
                )
              ],
            ),
          ),
          Text(story.username,maxLines: 1,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }
}
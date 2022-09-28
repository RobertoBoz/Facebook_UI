
import 'package:facebook_ui/app/widgets/avatar.dart';
import 'package:facebook_ui/data/models/publications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timeago/timeago.dart' as timeagot ;
import 'package:cached_network_image/cached_network_image.dart';

class PublicationsItem extends StatelessWidget {
  const PublicationsItem({Key? key,required this.publications, required this.reactions}) : super(key: key);

  final Publications publications;
  final List<String> reactions; 

  String _getEmogiPath(Reaction reaction){
    switch(reaction){

      case Reaction.like:
        return reactions[0];      
      case Reaction.love:
        return reactions[1];      
      case Reaction.laughin:
        return reactions[2];      
      case Reaction.sad:
        return reactions[3];      
      case Reaction.shocking:
        return reactions[4];      
    }
  }

  String _formatCount(int value){
    if(value <= 1000){
      return value.toString();
    }else{
      return "${(value / 1000).toStringAsFixed(1)}k";
    }

  }

  @override
  Widget build(BuildContext context) {
    var pading = const  EdgeInsets.symmetric(horizontal: 20,vertical: 10);
    const reactions = Reaction.values;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top:BorderSide(
            width: 4,
            color: Color(0xffEBEBEB)
          )
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: pading,
            child: Row(
             children: [
               Avatar(asset: publications.user.avatar, size: 38),
              const SizedBox(width: 10,),
              Text(publications.user.username),
              const Spacer(),           
              Text(timeagot.format(publications.createdAt)),
             ],                         
            ),            
          ),
         AspectRatio(
         aspectRatio: 16 / 9,
            child:  CachedNetworkImage(
              imageUrl: publications.imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: pading,
            child: Text(publications.title,style: const TextStyle(fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                          ...List.generate(reactions.length, (index) {
                      final reaction = reactions[index];
                      final isActive = reaction == publications.currentReaction;
                      return Column(
                        children: [
                          
                          SvgPicture.asset(_getEmogiPath(reaction),width: 30,height: 30,),
                          const SizedBox(height: 5,),
                            Icon(Icons.circle,color: isActive ?  Colors.redAccent: Colors.transparent,size: 5,)
                        ],
                      );
                      }           
                    ),
                    const SizedBox(width: 15,)
                  ],
                ),
                

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: FittedBox(
                      
                      child: Row(
                        
                        children: [
                                  
                        Text('${_formatCount(publications.commentsCount)} Comments'),
                        const SizedBox(width: 15,),
                        Text('${_formatCount(publications.shareCount)} Shares')
                        ],
                      ),
                    ),
                  ),
                )
        
              ],
            ),
          )
        ],
      ),
    );
    
  }
}
import 'package:facebook_ui/app/widgets/story_item.dart';
import 'package:facebook_ui/data/models/story.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart' ;


class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {

  final list = <Story>[];


  @override
  void initState() {
     generated();
    super.initState();
  }

  
     void generated(){
      for(int i = 0;i<5;i++){

        
     


        final publication = Story(
          

            username:  faker.person.name(),
            avatar: 'https://www.mundopsicologos.com/site/article/63246/53251/que-significa-ser-una-persona-autentica-9-virtudes-asociadas-a-la-autenticidad-0_ai1.jpg',
            bg: 'http://www.centauro.com.mx/wp-content/uploads/Indicadores-de-que-eres-una-persona-feliz.jpg' ,

             
          );
        list.add(publication);
        setState(() {
          
        });
      }

    }

  


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) { 
          final story = list[index];

          return StoryItem(
            story: story,
            isFirst: index == 0,
          );

         },
        itemCount: list.length,
        
      ),
    );
    
  }
}


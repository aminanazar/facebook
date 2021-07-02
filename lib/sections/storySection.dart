import 'package:facebook1/Widgets/assets.dart';
import 'package:facebook1/Widgets/storyCard.dart';
import 'package:flutter/cupertino.dart';

class StorySection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children:[
          StoryCard(
            labelText: "Add to Story" ,
            photos: mohanlal1,
            story:mohanpost,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mammootty" ,
            photos: mammotty,
            story:preist,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "ManjuWarroir" ,
            photos: manju,
            story:depali,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Apj Abdul Kalam" ,
            photos: apj,
            story:apjpost,
            displayBorder: true,
          ),

        ]
      )
    );
  }
}

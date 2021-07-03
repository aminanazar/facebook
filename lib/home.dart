import 'dart:collection';

import 'package:facebook1/Widgets/postCard.dart';
import 'package:facebook1/sections/headerButtonSection.dart';
import 'package:facebook1/sections/roomSection.dart';
import 'package:facebook1/sections/statusSection.dart';
import 'package:facebook1/sections/storySection.dart';
import 'package:facebook1/sections/suggestionSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook1/Widgets/circularButton.dart';
import 'package:flutter/services.dart';

import 'Widgets/assets.dart';
import 'Widgets/headerButtonSection.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider= Divider(
      thickness:1,
      color: Colors.grey[300],
    );
    Widget thickDivider= Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      // theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Facebook',
            style:TextStyle(
              color: Colors.blue,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions:[
            CircularButton(buttonIcon:Icons.search,
              buttonAction:(){
                print("search screen");
              },
            ),
            CircularButton(buttonIcon:Icons.chat,
              buttonAction:(){
                print(" messenger search screen");
              },
            ),

          ],
        ),
        body:ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne:headerButton(
                buttonAction: (){
                  print("Go live");
                },
                buttonColor:Colors.blue,
                buttonIcon: Icons.video_call,
                buttonText: "Live",

              ) ,
              buttonTwo:headerButton(
                buttonAction: (){
                  print("Go photo");
                },
                buttonColor:Colors.green,
                buttonIcon: Icons.photo_library,
                buttonText: "Photo",

              ) ,
              buttonThree:headerButton(
                buttonAction: (){
                  print("Go room");
                },
                buttonColor:Colors.purple,
                buttonIcon: Icons.video_call,
                buttonText: "room",
              ) ,
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              name: "Mammootty",
              photos: mammotty,
              publishedAt: "2h",
              postTitle: "preist movie release",
              postImage: preist,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "20k",
              commentCount: "1.5k",
            ),
            thickDivider,
            PostCard(
              name: "ManjuWarrior",
              photos: manju,
              publishedAt: "2h",
              postTitle: "Happy Diwali",
              postImage: depali,
              showBlueTick: true,
              likeCount: "1k",
              shareCount: "2k",
              commentCount: "1.5k",
            ),
            thickDivider,
            PostCard(
              name: "APJ Abduls Kelam",
              photos: apj,
              publishedAt: "2h",
              postTitle: "",
              postImage: apjpost,
              showBlueTick: true,
              likeCount: "2k",
              shareCount: "1k",
              commentCount: "1.6k",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              name: "Mohanlal",
              photos: mohanlal1,
              publishedAt: "Nov 10",
              postTitle: drishyamTitle,
              postImage: drishyam,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "1k",
              commentCount: "1.6k",
            ),
            thickDivider,

          ],
        ),
      ),
    );
  }
}

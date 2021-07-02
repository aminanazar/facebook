import 'package:facebook1/Widgets/assets.dart';
import 'package:facebook1/Widgets/suggestionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child:Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(onPressed: (){
              print("More Clicked!");
            },
            icon:Icon(Icons.more_horiz,
            color:Colors.grey[700],
            ),
          ),
          ),
          Container(
            height: 390,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
               SuggestionCard(
                  name:"Alex",
                   photos:person,
                   mutualFreinds: "1 mutual  freinds",
                   addFriend: (){
                  print("request friendship");
            },
            removeFriend: (){
              print("remove friend");
            },
          ),
                SuggestionCard(
                  name:"Amina",
                  photos:amina,
                  mutualFreinds: "2 mutual  freinds",
                  addFriend: (){
                    print("request friendship");
                  },
                  removeFriend: (){
                    print("remove friend");
                  },
                ),
                SuggestionCard(
                  name:"Fahad Fazil",
                  photos:fahad,
                  mutualFreinds: "1 mutual  freinds",
                  addFriend: (){
                    print("request friendship");
                  },
                  removeFriend: (){
                    print("remove friend");
                  },
                ),
                SuggestionCard(
                  name:"Girly",
                  photos:girly,
                  mutualFreinds: "5 mutual  freinds",
                  addFriend: (){
                    print("request friendship");
                  },
                  removeFriend: (){
                    print("remove friend");
                  },
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}

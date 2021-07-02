import 'package:facebook1/Widgets/assets.dart';
import 'package:facebook1/Widgets/photos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 70,
      child:ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        children: [
          createRoomButton(),
          Photos(displayImage: mohanlal1,displayStatus: true,),
          Photos(displayImage:mammotty,displayStatus: true,),
          Photos(displayImage: manju,displayStatus: true,),
          Photos(displayImage: apj,displayStatus: true,),

        ],
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(left:5,right:5),
        child:OutlineButton.icon(
      shape: StadiumBorder(),
      icon: Icon(
          Icons.video_call,
          color:Colors.purple
      ),
      label:Text(
        "Create \nRoom",
        style: TextStyle(
          color:Colors.blue,
        ),
      ),
      onPressed:() {
        print("Create a chat room!");
      },
      borderSide: BorderSide(
          color:Colors.blue[100]
      ),
    ),
    );
  }
}

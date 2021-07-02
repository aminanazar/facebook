import 'package:facebook1/Widgets/blueTick.dart';
import 'package:facebook1/Widgets/headerButtonSection.dart';
import 'package:facebook1/Widgets/photos.dart';
import 'package:facebook1/sections/headerButtonSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'assets.dart';

class PostCard extends StatelessWidget {
  final String photos;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  PostCard({
    @required this.photos,
    @required this.name,
    @required this.publishedAt,
    @required this.postTitle,
    @required this.postImage,
    this.showBlueTick = false,
    @required this.likeCount,
    @required this.shareCount,
    @required this.commentCount,

});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
            Divider(color: Colors.grey[300],
                thickness: 2),

          HeaderButtonSection(
            buttonOne: headerButton(
              buttonAction: (){
                print("like the post");
              },
                buttonColor: Colors.grey[700],
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonText: "Like",
            ) ,
            buttonTwo: headerButton(
              buttonAction: (){
                print("comment the post");
              },
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.message_outlined,
              buttonText: "comment",
            ) ,
            buttonThree:headerButton(
              buttonAction: (){
                print("share the post");
              },
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.share_outlined,
              buttonText: "share",
            ) ,
          ),
        ],
      )
    );
  }
  Widget footerSection(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(left:10,right:10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child:Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape:BoxShape.circle,
                  ),
                  child:Icon(
                    Icons.thumb_up,
                    color:Colors.white,
                    size:10,
                  ),
                ),
                SizedBox(width:5),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label:commentCount),
                SizedBox(width:5),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "shares"),
                SizedBox(width: 10),
                Photos(
                  displayImage: photos,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),

                IconButton(onPressed: (){
                  print(" drop down pressed");
                },
                  icon:Icon(Icons.arrow_drop_down,
                  color: Colors.grey[700],),
                ),

              ],
            ),
          ),
        ],

      ),
    );
  }
  Widget displayText({@required String label}){
    return Text(
      label== null ? "" : label,
      style: TextStyle(
          color: Colors.grey[700]),
    );
  }
  Widget imageSection(){
    return Container(
      padding: EdgeInsets.only(top:5,bottom:5),
      child: Image.asset(
        postImage,
        height:600,
        width:500,
        fit: BoxFit.fitWidth,

      ),
    );
  }
  Widget titleSection(){
    return postTitle != null && postTitle != ""
      ? Container(
      padding: EdgeInsets.only(
        left:10,
        right:10,
        bottom: 5,),
      child:Text(postTitle == null ? "" : postTitle,
      style: TextStyle(
          color:Colors.black,
          fontSize: 16),
      ),
     )
        : SizedBox();
  }
  Widget postCardHeader(){
    return( ListTile(
      leading: Photos(
        displayImage: photos,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width:10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ) ,
      subtitle: Row(
        children: [
          Text(publishedAt==null ? "" : publishedAt ),
          SizedBox(width: 10,),
          Icon(Icons.public,
            color: Colors.grey[700],
            size: 15,),
        ],
      ),
      trailing: IconButton(
          onPressed: (){
            print("open more menu");
          },
          icon:Icon(
            Icons.more_horiz,
            color:Colors.grey[700],)
      ),
    ));
  }
}
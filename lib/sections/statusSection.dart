import 'dart:ui';
import 'package:facebook1/Widgets/assets.dart';
import 'package:facebook1/Widgets/photos.dart';

import 'package:flutter/material.dart';
class StatusSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Photos(displayImage:mohanlal1,displayStatus: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind ?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),

    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headerButton({
  @required String buttonText,
  @required IconData buttonIcon,
  @required void Function() buttonAction,
  @required Color color,
  @required buttonColor,
}){
  return FlatButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: Text(buttonText),
  );
}
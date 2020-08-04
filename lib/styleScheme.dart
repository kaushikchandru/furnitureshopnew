import 'package:flutter/material.dart';

Color bgColor = Color(0xfff9f7f8);

BoxDecoration containerStyle(String edge)
{
  return BoxDecoration(
    borderRadius: getBorderRadius(edge),
    color: Colors.white,
    boxShadow: [BoxShadow(color: Color(0xffeaeef8), offset: Offset(3.0, 3.0))]
  );
}
BorderRadius getBorderRadius(String edge)
{
  if(edge == "all")
    {
      return BorderRadius.all(Radius.circular(17));
    }
  else if(edge == "left")
    {
      return BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(50));
    }
  else
    {
      return BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50));
    }
}
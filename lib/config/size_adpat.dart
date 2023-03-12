import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text customText(String title,
    {FontWeight fWeight = FontWeight.w300,
    double fSize = 13.0,
    int maxLine = 3,
    Color fColor = Colors.black,
    TextAlign tAlign = TextAlign.start}) {
  return Text(
    title,
    textAlign: tAlign,
    style: TextStyle(color: fColor, fontSize: fSize, fontWeight: fWeight),
  );
}

Widget lineView(
    {double height = 2.0,
    double leftEdge = 10,
    double rightEdge = 10,
    Color color = Colors.black}) {
  return Divider(
    height: height,
    indent: leftEdge,
    endIndent: leftEdge,
    color: color,
  );
}

double pxFont(double sp) => sp.sp;

double pxH(double pxHeight) => pxHeight.h;

double pxW(double pxWidth) => pxWidth.w;

double pScreenHeight() => ScreenUtil().screenHeight;
double pScreenWidth() => ScreenUtil().screenWidth;

cellWidth(double value) => SizedBox(width: pxW(value));

cellHeight(double value) => SizedBox(height: pxH(value));




statusHeight()=>ScreenUtil().statusBarHeight;
bottomBarHeight()=>ScreenUtil().bottomBarHeight;

statusCell()=> SizedBox(height: statusHeight(),);
import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get screenWith => MediaQuery.of(this).size.width;
  double get screenHeigth => MediaQuery.of(this).size.height;
  double get screenShortestSide => MediaQuery.of(this).size.shortestSide;
  double get screenLongestSide => MediaQuery.of(this).size.longestSide;

  double percentWidth(double percent) => screenWith * percent;
  double percentHeight(double percent) => screenHeigth * percent;
}

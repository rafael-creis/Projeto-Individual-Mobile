import 'package:flutter/material.dart';

class ColorPalette {
  final mainGrey = const Color(0xFF363636);
  final darkGrey = const Color(0xFF272727);
  final darkerGrey = const Color(0xFF181818);
  final primColor = const Color(0xFFFF6400);
  final secColor = const Color(0xFF0099FF);
  final terColor = const Color(0xFF640064);
  final quadColor = const Color(0xFFFF0000);
}

class SessionPalette {
  final sessionShadow = BoxShadow(
      color: ColorPalette().darkerGrey, spreadRadius: 5, blurRadius: 10);
}

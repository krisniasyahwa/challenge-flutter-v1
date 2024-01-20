import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color backgroundColor1 = Color(0xff060D20);
Color backgroundColor2 = Color(0xffFEB800);
Color backgroundColor3 = Color(0xff9CA0A4);
Color primaryTextColor = Color(0xffFFFFFF);
Color secondaryTextColor = Color(0xff9C9C9C);
Color textiaryTextColor = Color(0xff88A4E8);
Color quaternaryTextColor = Color(0xffAAA9B1);

TextStyle primaryTextStyle = GoogleFonts.mulish(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.mulish(
  color: secondaryTextColor,
);

TextStyle textiaryTextStyle = GoogleFonts.mulish(
  color: textiaryTextColor,
);

TextStyle quaternaryTextStyle = GoogleFonts.mulish(
  color: quaternaryTextColor,
);



TextStyle anotherTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle homepageTextStyle = GoogleFonts.merriweather(
  color: primaryTextColor,
);

TextStyle splashTextStyle = GoogleFonts.rubikGlitch(color: primaryTextColor);


FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

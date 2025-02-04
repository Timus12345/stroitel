import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors
{
  static const orange = Color(0xFFEE7100);
  static const lightGrey = Color(0xFFADADAD);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000); //иногда к нему будет добавляться opacity +-15%!!
  static const grey = Color(0xFFBCBCBC);//poisk in menu
  static const grey2 = Color(0xFF8C8C8C);//thext mobile phone in profile
}

abstract class AppShrifts
{
  static var interRegular5 = GoogleFonts.inter(fontSize: 5, fontWeight: FontWeight.bold);
  static var interRegular7 = GoogleFonts.inter(fontSize: 7, fontWeight: FontWeight.bold);
  static var interRegular10 = GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.bold);
  static var interRegular12 = GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.bold);
  static var interRegular14 = GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold);
  static var interRegular15 = GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.bold);
  static var interRegular16 = GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold);
  static var interRegular18 = GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold);
  static var interRegular20 = GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold);
  static var interRegular32 = GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.bold);
  static var interSemiBold3 = GoogleFonts.inter(fontSize: 3, fontWeight: FontWeight.w600);
  static var interSemiBold5 = GoogleFonts.inter(fontSize: 5, fontWeight: FontWeight.w600);
  static var interSemiBold6 = GoogleFonts.inter(fontSize: 6, fontWeight: FontWeight.w600);
  static var interSemiBold7 = GoogleFonts.inter(fontSize: 7, fontWeight: FontWeight.w600);
  static var interSemiBold8 = GoogleFonts.inter(fontSize: 8, fontWeight: FontWeight.w600);
  static var interSemiBold9 = GoogleFonts.inter(fontSize: 9, fontWeight: FontWeight.w600);
  static var interSemiBold10 = GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w600);
  static var interSemiBold12 = GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600);
  static var interSemiBold20 = GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600);
  static var interMedium8 = GoogleFonts.inter(fontSize: 8, fontWeight: FontWeight.w500);
  static var interMedium10 = GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w500);
  static var interMedium20 = GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w500);
  static var interLight8 = GoogleFonts.inter(fontSize: 8, fontWeight: FontWeight.w300);
  static var interLight9 = GoogleFonts.inter(fontSize: 9, fontWeight: FontWeight.w300);
  static var interLight10 = GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w300);
  static var interLight12 = GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w300);
  static var interLight18 = GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w300);
  static var interLight20 = GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w300);
  static var interExtraLight8 = GoogleFonts.inter(fontSize: 8, fontWeight: FontWeight.w200);

}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Styles que define o estilo dos textos
class AppTextStyles {
  static TextStyle label({required Color textColor}) {
    return GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: textColor,
    );
  }

  static TextStyle paragraph({required Color textColor}) {
    return GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: textColor,
    );
  }

  static TextStyle subTitle({required Color textColor}) {
    return GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: textColor,
    );
  }

  static TextStyle title({required Color textColor}) {
    return GoogleFonts.inter(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  static TextStyle subHeading({required Color textColor}) {
    return GoogleFonts.inter(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  static TextStyle headline({required Color textColor}) {
    return GoogleFonts.inter(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  static TextStyle highlight({required Color textColor}) {
    return GoogleFonts.inter(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }
}

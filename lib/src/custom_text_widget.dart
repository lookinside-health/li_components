// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class CustomTextWidget extends StatelessWidget {
  String text;
  TextStyle style;
  TextAlign? textAlign;
  CustomTextWidget(
    this.text, {
    required this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return TextRenderer(
        child: SelectableText(
      text,
      style: style,
      textAlign: textAlign ?? TextAlign.left,
    ));
  }
}

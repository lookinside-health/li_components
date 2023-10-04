// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sisgocomponents/src/app_text_styles.dart';

import '../sisgocomponents.dart';

enum ButtonVariation {
  small,
  medium,
  large,
}

// ignore: must_be_immutable
class CustomButtonWidget extends StatelessWidget {
  final ButtonVariation variation;
  final String text;
  final Icon? icon;
  final VoidCallback onPressed;
  bool isLoading = false;
  double? width = 400;
  Color? backgroundColor = colorStyles.materialPrimary.shade500;
  Color? textColor = colorStyles.white;

  CustomButtonWidget({
    Key? key,
    required this.variation,
    required this.text,
    this.icon,
    required this.onPressed,
    required this.isLoading,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  /// Widget para o Button customizado
  // Widget for Button custom
  Widget build(BuildContext context) {
    double height;

    switch (variation) {
      case ButtonVariation.small:
        height = 30;
        break;

      case ButtonVariation.medium:
        height = 40;
        break;

      case ButtonVariation.large:
        height = 50;
        break;
    }
    return Container(
      height: 56,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10.0), // Ajuste o valor conforme necessário
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: isLoading
            ? CircularProgressIndicator(
                color: colorStyles.white,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon == null
                      ? const SizedBox()
                      : Row(
                          children: [
                            icon!,
                            const SizedBox(
                              width: 12,
                            )
                          ],
                        ),
                  CustomTextWidget(text,
                      style: AppTextStyles.paragraph(textColor: textColor!)),
                ],
              ),
      ),
    );
  }
}

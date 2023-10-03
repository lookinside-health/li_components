// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sisgocomponents/src/app_color_styles.dart';
import 'package:sisgocomponents/src/app_text_styles.dart';
import 'package:sisgocomponents/src/custom_text_widget.dart';

enum ButtonVariation {
  longGreen,
  longWhite,
  shortGreen,
  shortWhite,
}

// ignore: must_be_immutable
class CustomButtonWidget extends StatelessWidget {
  final ButtonVariation variation;
  final String text;
  final Icon? icon;
  final VoidCallback onPressed;
  bool isLoading = false;

  CustomButtonWidget({
    Key? key,
    required this.variation,
    required this.text,
    this.icon,
    required this.onPressed,
    required this.isLoading,
  }) : super(key: key);

  /// Widget para o Button customizado
  // Widget for Button custom
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    bool border;
    double width;

    Size screenSize = MediaQuery.of(context).size;

    switch (variation) {
      case ButtonVariation.longGreen:
        backgroundColor = AppColorStyles.primary500;
        textColor = AppColorStyles.white;
        border = false;
        width = screenSize.width - 30; //Cada lado da tela tem borda de 15
        break;

      case ButtonVariation.longWhite:
        backgroundColor = AppColorStyles.white;
        textColor = AppColorStyles.primary500;
        width = screenSize.width - 30;
        border = true;
        break;

      case ButtonVariation.shortGreen:
        backgroundColor = AppColorStyles.primary500;
        textColor = AppColorStyles.white;
        width = (screenSize.width - 30) / 2; //Metade do tamanho do botão padrão
        border = false;
        break;

      case ButtonVariation.shortWhite:
        backgroundColor = AppColorStyles.white;
        textColor = AppColorStyles.primary500;
        width = (screenSize.width - 30) / 2; //Metade do tamanho do botão padrão
        border = true;
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
          side: border
              ? const BorderSide(color: AppColorStyles.neutral600, width: 0.5)
              : const BorderSide(color: Colors.transparent),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator(
                color: AppColorStyles.white,
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
                      style: AppTextStyles.subTitle(textColor: textColor)),
                ],
              ),
      ),
    );
  }
}

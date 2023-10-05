// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:li_components/li_components.dart';
import 'package:li_components/src/app_text_styles.dart';

enum InputVariation {
  longInput,
  shortInput,
}

class CustomInputWidget extends StatelessWidget {
  final String placeHolder;
  final TextEditingController controller;
  final TextInputType type;
  final bool obsText;
  final Function(String) onChanged;
  final IconData icon;
  final bool isPassword;
  final String? Function(String?) validator;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? hintColor;
  final Color? iconColor;

  const CustomInputWidget({
    Key? key,
    required this.placeHolder,
    required this.controller,
    required this.type,
    required this.obsText,
    required this.onChanged,
    required this.icon,
    required this.isPassword,
    required this.validator,
    this.backgroundColor,
    this.textColor,
    this.hintColor,
    this.iconColor,
  }) : super(key: key);

  /// Widget para o Input customizado
  // Widget for Input Custom
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 56,
      decoration: BoxDecoration(
          color: backgroundColor ?? colorStyles.materialNeutral.shade300,
          borderRadius: BorderRadius.circular(10)),
      width: size.width,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style: AppTextStyles.paragraph(
            textColor: textColor ?? colorStyles.materialNeutral.shade900),
        controller: controller,
        keyboardType: type,
        obscureText: obsText,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor ?? colorStyles.materialNeutral.shade900,
              ),
            ],
          ),
          suffixIcon: isPassword
              ? InkWell(
                  onTap: () {
                    !obsText;
                  },
                  child: (obsText
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility)),
                )
              : null,
          border: InputBorder.none,
          hintStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: hintColor ?? colorStyles.materialNeutral.shade700,
          ),
          hintText: placeHolder,
          contentPadding: const EdgeInsets.only(
            left: 10,
            bottom: 7,
          ),
        ),
      ),
    );
  }
}

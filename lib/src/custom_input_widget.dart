// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:li_components/li_components.dart';
import 'package:li_components/src/app_text_styles.dart';

enum InputVariation {
  longInput,
  shortInput,
}

class CustomInputWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType? type;
  final bool obsText;
  final Function(String)? onChanged;
  final String? suffixText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool? isPassword;
  final bool? isEnabled;
  final String? Function(String?)? validator;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? hintColor;
  final Color? iconColor;
  final List<TextInputFormatter>? inputFormatters;

  const CustomInputWidget({
    Key? key,
    required this.label,
    required this.controller,
    required this.type,
    this.obsText = false,
    this.onChanged,
    this.suffixText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword,
    this.isEnabled = true,
    this.validator,
    this.backgroundColor,
    this.textColor,
    this.hintColor,
    this.iconColor,
    this.inputFormatters,
  }) : super(key: key);

  /// Widget para o Input customizado
  // Widget for Input Custom
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor ??
            (isEnabled!
                ? colorStyles.white
                : colorStyles.materialNeutral.shade600),
      ),
      child: TextFormField(
        inputFormatters: inputFormatters,
        textAlignVertical: TextAlignVertical.center,
        style: AppTextStyles.paragraph(
            textColor: textColor ?? colorStyles.materialNeutral.shade900),
        controller: controller,
        keyboardType: type,
        obscureText: obsText,
        onChanged: onChanged,
        validator: validator ?? (_) => '',
        enabled: isEnabled,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 12.0, left: 8, right: 8),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixText: suffixText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: colorStyles.black,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: colorStyles.black,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: colorStyles.black,
              width: 1,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: colorStyles.black,
              width: 1,
            ),
          ),
          hintStyle: AppTextStyles.paragraph(
            textColor: hintColor ?? colorStyles.materialNeutral.shade700,
          ),
          labelStyle: AppTextStyles.label(
              textColor: AppColorStyles.instance.materialNeutral.shade900),
          label: Text(label),
        ),
      ),
    );
  }
}

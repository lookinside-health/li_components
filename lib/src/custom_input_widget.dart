// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sisgocomponents/src/app_color_styles.dart';

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

  const CustomInputWidget({
    Key? key,
    required this.placeHolder,
    required this.controller,
    required this.type,
    required this.obsText,
    required this.onChanged,
    required this.validator,
    required this.icon,
    required this.isPassword,
  }) : super(key: key);

  /// Widget para o Input customizado
  // Widget for Input Custom
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 56,
      decoration: BoxDecoration(
          color: AppColorStyles.neutral300,
          borderRadius: BorderRadius.circular(10)),
      width: size.width,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColorStyles.neutral900,
        ),
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
                color: AppColorStyles.neutral900,
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
            color: AppColorStyles.neutral700,
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

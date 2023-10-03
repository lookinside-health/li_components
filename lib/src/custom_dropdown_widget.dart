// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sisgocomponents/src/app_color_styles.dart';
import 'package:sisgocomponents/src/app_text_styles.dart';
import 'package:sisgocomponents/src/custom_text_widget.dart';

/// Componente para o CustomDropdown
// Dropdown component
class CustomDropdownWidget extends StatelessWidget {
  String value;
  List<String> items;

  CustomDropdownWidget({
    Key? key,
    required this.value,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 56,
      decoration: BoxDecoration(
          color: AppColorStyles.neutral300,
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        value: value,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: CustomTextWidget(
              value,
              style:
                  AppTextStyles.paragraph(textColor: AppColorStyles.neutral700),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {},
        validator: (String? value) {
          return null;
        },
      ),
    );
  }
}
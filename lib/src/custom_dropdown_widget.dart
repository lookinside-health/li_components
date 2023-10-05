// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:li_components/src/app_color_styles.dart';
import 'package:li_components/src/app_text_styles.dart';
import 'package:li_components/src/custom_text_widget.dart';

import '../li_components.dart';

/// Componente para o CustomDropdown
// Dropdown component
class CustomDropdownWidget extends StatelessWidget {
  String value;
  List<String> items;
  Color? backgroundColor;
  Color? textColor;

  CustomDropdownWidget({
    Key? key,
    required this.value,
    required this.items,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 56,
      decoration: BoxDecoration(
          color: backgroundColor ?? colorStyles.materialNeutral.shade300,
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
              style: AppTextStyles.paragraph(
                  textColor: textColor ?? colorStyles.materialNeutral.shade700),
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

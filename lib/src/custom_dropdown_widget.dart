// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../li_components.dart';

/// Componente para o CustomDropdown
// Dropdown component
class CustomDropdownWidget extends StatelessWidget {
  String value;
  List<String> items;
  String hintText;
  Color? backgroundColor;
  Color? textColor;
  Function(String?)? onChanged;

  CustomDropdownWidget({
    Key? key,
    required this.value,
    required this.items,
    required this.hintText,
    this.backgroundColor,
    this.textColor,
    required this.onChanged,
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
        hint: Text(hintText),
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
            child: Text(
              value,
              style: AppTextStyles.paragraph(
                  textColor: textColor ?? colorStyles.materialNeutral.shade700),
            ),
          );
        }).toList(),
        onChanged: onChanged,
        validator: (String? value) {
          return null;
        },
      ),
    );
  }
}

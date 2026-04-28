import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/core/utils/app_styles.dart' show AppStyles;

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onSaved,
    this.mxlines = 1,
    this.isnumber = false,
  });

  final String hintText;

  final void Function(String?)? onSaved;
  final int mxlines;
  final bool isnumber;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.mxlines,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },

      onSaved: widget.onSaved,

      style: AppStyles.semiBold16.copyWith(
        color: const Color(0xFF0C0D0D),
        fontSize: 16,
        letterSpacing: 0.0,
      ),

      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppStyles.bold14.copyWith(color: Colors.grey[500]),
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        enabledBorder: defaultBorder,
        focusedBorder: defaultBorder,
      ),
      keyboardType: widget.isnumber ? TextInputType.number : TextInputType.text,
    );
  }
}

final OutlineInputBorder defaultBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
);

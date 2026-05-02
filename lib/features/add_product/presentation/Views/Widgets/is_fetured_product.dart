import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/core/widgets/cusom_check_box.dart';

class IsFeturedProduct extends StatelessWidget {
  const IsFeturedProduct({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckbox(
          onChanged: (value) {
            onChanged(value);
          },
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            "Is Featured Product ?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

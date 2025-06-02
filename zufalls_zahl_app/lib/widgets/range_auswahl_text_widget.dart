import 'package:flutter/material.dart';

class RangeAuswahlTextWidget extends StatelessWidget {
  const RangeAuswahlTextWidget({
    super.key,
    required this.controller,
    required this.labelText,
  });

  final String labelText;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: false,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Bitte etwas eingeben';
        }
        return null;
      },
    );
  }
}

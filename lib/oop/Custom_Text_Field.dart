import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxlins = 1, this.onsaved});
  final String hint;
  final int maxlins;
  final Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
          onSaved: onsaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Filed Is Empty";
            } else {
              return null;
            }
          },
          maxLines: maxlins,
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: kPrimaryColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: kPrimaryColor)),
          )),
    );
  }
}

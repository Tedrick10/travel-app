// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// TextFieldWidget: StatelessWidget
class TextFieldWidget extends StatelessWidget {
  // Parameter: Class Properties
  final TextEditingController textEditingController;
  final String hintText;
  final IconData prefixIconData;

  // Constructor
  const TextFieldWidget({
    required this.textEditingController,
    required this.hintText,
    required this.prefixIconData,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Debugging
    print(textEditingController.text);

    // Returning Widgets
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 15.0,
          color: Colors.grey.withOpacity(0.7),
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          prefixIconData,
          color: Colors.grey.withOpacity(0.7),
        ),
      ),
    );
  }
}

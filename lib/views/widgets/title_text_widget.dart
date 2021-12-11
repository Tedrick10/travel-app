// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// TitleTextWidget: StatelessWidget
class TitleTextWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String text;
  final Color color;

  // Constructor
  const TitleTextWidget({
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Text(
      text,
      style: TextStyle(
        fontSize: 50,
        color: color,
      ),
    );
  }
}

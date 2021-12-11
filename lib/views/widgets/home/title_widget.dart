// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../title_text_widget.dart';

// TitleWidget: StatelessWidget Class
class TitleWidget extends StatelessWidget {
  // Constructor
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TitleTextWidget(
            text: "Where",
            color: Color(0xFFFD6F4F),
          ),
          TitleTextWidget(
            text: "will you go",
            color: Colors.black,
          ),
          TitleTextWidget(
            text: "today",
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

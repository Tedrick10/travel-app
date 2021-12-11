// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../text_field_widget.dart';

// SearchFieldWidget: StatelessWidget Class
class SearchFieldWidget extends StatelessWidget {
  // Final: Class Properties
  final TextEditingController _searchFieldController = TextEditingController();

  // Constructor
  SearchFieldWidget({
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Debugging
    print("Search Text: ${_searchFieldController.text}");

    // Returning Widgets
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: const EdgeInsets.only(left: 20.0),
        height: 70.0,
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: TextFieldWidget(
            textEditingController: _searchFieldController,
            hintText: "What would you like to discover?",
            prefixIconData: Icons.search,
          ),
        ),
      ),
    );
  }
}

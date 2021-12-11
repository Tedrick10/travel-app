// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// CardWidget: StatelessWidget Class
class CardWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String title;
  final String rating;
  final String imagePath;

  // Constructor
  const CardWidget({
    required this.title,
    required this.rating,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  // Action: Class Methods
  void _cardActionMethod() {}

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: _cardActionMethod,
        child: Stack(
          children: [
            Container(
              width: 200.0,
              height: 275.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 275.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

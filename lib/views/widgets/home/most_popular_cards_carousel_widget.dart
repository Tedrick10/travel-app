// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../card_widget.dart';

// MostPopularCardsCarouselWidget: StatelessWidget Class
class MostPopularCardsCarouselWidget extends StatelessWidget {
  // Constructor
  const MostPopularCardsCarouselWidget({
    Key? key,
  }) : super(key: key);
  // Action: Class Methods
  void _moreHorizActionMethod() {}

  // Widget: Class Methods
  Widget _bannerWidget(BuildContext context) {
    // Final: Method Properties
    final double _screenWidth = MediaQuery.of(context).size.width;

    // Returning Widgets
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: _screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Most Popular",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            IconButton(
              onPressed: _moreHorizActionMethod,
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _carouselWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SizedBox(
        height: 300.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            CardWidget(
              title: "Pamir Mountains, China",
              rating: "4.1",
              imagePath: "assets/images/mountain.jpeg",
            ),
            CardWidget(
              title: "Kathmandu city, Nepal",
              rating: "3.8",
              imagePath: "assets/images/kathmandu.jpeg",
            ),
          ],
        ),
      ),
    );
  }

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _bannerWidget(context),
        _carouselWidget(),
      ],
    );
  }
}

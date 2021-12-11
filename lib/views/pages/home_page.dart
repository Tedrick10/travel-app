// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import 'package:travel_app/views/widgets/home/title_widget.dart';
import 'package:travel_app/views/widgets/home/banner_widget.dart';
import 'package:travel_app/views/widgets/home/search_field_widget.dart';
import 'package:travel_app/views/widgets/home/most_popular_cards_carousel_widget.dart';

// HomePage: StatefulWidget Class
class HomePage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Home";
  static String routeName = "/home";

  // Constructor
  const HomePage({
    Key? key,
  }) : super(key: key);

  // createState: Override Class Method
  @override
  _HomePageState createState() => _HomePageState();
}

// _HomePageState: State Class
class _HomePageState extends State<HomePage> {
  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const BannerWidget(),
          const TitleWidget(),
          SearchFieldWidget(),
          const MostPopularCardsCarouselWidget(),
        ],
      ),
    );
  }
}

// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Pages
import './views/pages/home_page.dart';

// Main Function
void main() {
  runApp(MyApp());
}

// MyApp: StatelessWidget Class
class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widget
    return MaterialApp(
      title: "Travel App",
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => const HomePage(),
      },
    );
  }
}

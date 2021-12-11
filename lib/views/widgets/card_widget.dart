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
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 12.0,
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            rating,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 50.0),
                  const Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Opensans",
                    ),
                  ),
                  const SizedBox(width: 7.0),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 25.0,
                  )
                ],
              ),
            ),
            Positioned(
              top: 180.0,
              left: 10.0,
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: "Opensans",
                  fontSize: 17.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              top: 220.0,
              left: 10.0,
              child: Row(
                children: [
                  const Text(
                    "I was here",
                    style: TextStyle(
                      fontFamily: "Opensans",
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Stack(
                    children: [
                      const SizedBox(width: 100.0, height: 40.0),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/profilepic.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30.0,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              "+17..",
                              style: TextStyle(
                                fontFamily: "Opensans",
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// BannerWidget: StatelessWidget Class
class BannerWidget extends StatelessWidget {
  // Constructor
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.donut_large),
          Stack(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
              ),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/profilepic.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 5.0,
                top: 40.0,
                child: Container(
                  width: 15.0,
                  height: 15.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.5),
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

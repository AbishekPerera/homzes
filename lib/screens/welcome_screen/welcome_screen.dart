import 'package:flutter/material.dart';
import 'package:homzes/constants/image_constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstants.bg1),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(color: Colors.black.withValues(alpha: 0.7)),
          ),
          // title area
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Homzes",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  // icon button
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                      child: Icon(Icons.menu, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

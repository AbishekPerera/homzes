import 'package:flutter/material.dart';

class ServicesCards extends StatelessWidget {
  const ServicesCards({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });

  final String icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(image: AssetImage(icon)),
            ),
          ),
          Text(text, style: Theme.of(context).textTheme.headlineMedium),
        ],
      ),
    );
  }
}

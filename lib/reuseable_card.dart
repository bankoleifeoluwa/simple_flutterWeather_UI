import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReuseableCard extends StatelessWidget {
  double size = 60;
  final String text;
  final String image;
  final String temp;
  ReuseableCard({
    super.key,
    required this.text,
    required this.image,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
            SvgPicture.asset(
              image,
              width: 40,
              height: 40,
              // fit: BoxFit.contain,
            ),
            SizedBox(
              height: 5,
            ),
            Text(text),
            SizedBox(
              height: 5,
            ),
            Text(temp)
          ],
        ),
      ),
    );
  }
}

// final String assetName = 'assets/image.svg';
// final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

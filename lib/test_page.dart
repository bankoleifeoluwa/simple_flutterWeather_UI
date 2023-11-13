import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hi, test")),
      body: Container(
          child: Row(
        children: [
          SvgPicture.asset(
            "humidity.svg",
          ),
          SvgPicture.asset('mist-line.svg')
        ],
      )),
    );
  }
}

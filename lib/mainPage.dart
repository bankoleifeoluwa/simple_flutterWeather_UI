// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_ui/reuseable_card.dart';
import 'package:weather_ui/reuseable_text.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Text(
                  "Wet Weather Ui",
                  style: TextStyle(color: Colors.black),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.nightlight,
                  color: Colors.black,
                )
              ],
            )),
        body: Container(
          margin: const EdgeInsets.all(50),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  prefixIcon: Icon(Icons.location_on_outlined),
                  hintText: "Enter Location Here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Image.asset("iconss/downloadsun.png"),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Center(
                    child: AppLargeText(
                      text: "18° Celcius",
                      size: 30,
                    ),
                  ),
                  AppLargeText(text: "Alaska"),
                  SizedBox(
                    height: 2.5,
                  ),
                  Text("13/11/23")
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReuseableCard(
                      text: ("Temperature"),
                      image: "iconss/temperature-max.svg",
                      temp: "18°"),
                  ReuseableCard(
                      text: ("Humidity"),
                      image: "iconss/humidity.svg",
                      temp: "45%"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReuseableCard(
                      text: ("Wind"),
                      image: "iconss/strong-wind.svg",
                      temp: "3.13 m/h"),
                  ReuseableCard(
                      text: ("Visibility"),
                      image: ("iconss/mist-line.svg"),
                      temp: "16093 km"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

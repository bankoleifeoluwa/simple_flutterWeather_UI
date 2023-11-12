import 'package:flutter/material.dart';

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
                  "Simple Weather Ui",
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
                  prefixIcon: Icon(Icons.location_on_outlined),
                  hintText: "Enter Location Here",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: Image(
                  image: AssetImage(""),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

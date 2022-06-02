import 'package:chapter_one/screens/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is First Screen"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SecondScreen(screenData: 'Data from First Screen'),
                    ),
                  );
                },
                child: Text("Go to Second Screen"))
          ],
        ),
      ),
    );
  }
}

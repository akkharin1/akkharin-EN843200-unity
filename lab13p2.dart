import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 60),
            const Expanded(
              child: Image(
                image: NetworkImage(
                    'http://ocdn.eu/images/pulscms/ZjM7MDA_/60b0fa548a4bde46cd4c0b10b6042941.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome to the Quiz App",
              style: TextStyle(fontSize: 27, color: Colors.pink),
            ),
            const SizedBox(height: 20),
            const Text(
              "By Akkharin Lamsombut 623040534-7",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Start'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestartScreen extends StatelessWidget {
  const RestartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text('Restart'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

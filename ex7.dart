import 'package:flutter/material.dart';

class GolfImageAsset extends StatelessWidget {
  const GolfImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("image/golf.jpg");
    Image image = Image(image: assetImage, width: 400, height: 400);
    return Container(
      child: image,
      padding: const EdgeInsets.only(
        right: 10,
      ),
      margin: const EdgeInsets.only(
        top: 0,
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  void alertMsg(BuildContext context) {
    var alertDialog = const AlertDialog(
        title: Text("Confirmation"), content: Text("Submitting information"));

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.lightGreen,
            padding: const EdgeInsets.all(12),
            textStyle: const TextStyle(fontSize: 30)),
        child: const Text("Submit", style: TextStyle(color: Colors.deepOrange)),
        onPressed: () => {alertMsg(context)},
      ),
    );
  }
}

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 50.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    "Akkharin Lamsombut",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Prompt',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Text(
                    "623040534-7",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Prompt',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                )
              ],
              textDirection: TextDirection.ltr,
            ),
            const SizedBox(height: 17.0),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    "Photo Credit:",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Prompt',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Text(
                    "Omsin",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Prompt',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
              textDirection: TextDirection.ltr,
            ),
            const GolfImageAsset(),
            const Button()
          ],
        ),
      ),
    );
  }
}

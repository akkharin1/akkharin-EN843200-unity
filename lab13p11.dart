import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../lab12p2.dart';

class UniversityPlace extends StatefulWidget {
  const UniversityPlace({Key? key, required this.num, required this.info})
      : super(key: key);

  final int num;
  final Map<dynamic, dynamic> info;

  @override
  State<UniversityPlace> createState() => _UniversityPlaceState();
}

class _UniversityPlaceState extends State<UniversityPlace> {
  late String name;
  late String title;
  late String imgUrl;

  late String nameTab1;
  late Color nameColor1;
  late Color correctColor1;

  late String nameTab2;
  late Color nameColor2;
  late Color correctColor2;

  late String nameTab3;
  late Color nameColor3;
  late Color correctColor3;

  late String nameTab4;
  late Color nameColor4;
  late Color correctColor4;

  bool previous = false;
  Widget? nextPlace;

  @override
  void initState() {
    super.initState();
    name = widget.info[widget.num]["name"];
    title = widget.info[widget.num]["title"];
    imgUrl = widget.info[widget.num]["imgUrl"];

    nameTab1 = widget.info[widget.num]["nameTab1"];
    nameColor1 = widget.info[widget.num]["nameColor1"];
    correctColor1 = widget.info[widget.num]["correctColor1"];

    nameTab2 = widget.info[widget.num]["nameTab2"];
    nameColor2 = widget.info[widget.num]["nameColor2"];
    correctColor2 = widget.info[widget.num]["correctColor2"];

    nameTab3 = widget.info[widget.num]["nameTab3"];
    nameColor3 = widget.info[widget.num]["nameColor3"];
    correctColor3 = widget.info[widget.num]["correctColor3"];

    nameTab4 = widget.info[widget.num]["nameTab4"];
    nameColor4 = widget.info[widget.num]["nameColor4"];
    correctColor4 = widget.info[widget.num]["correctColor4"];

    if (widget.num > 1 && widget.num <= widget.info.length) {
      previous = true;
    }
    if (widget.num < widget.info.length) {
      nextPlace = UniversityPlace(num: widget.num + 1, info: widget.info);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      body: isPortrait
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        name,
                        style:
                            const TextStyle(fontSize: 25, color: Colors.pink),
                      ),
                    ),
                  ),
                  Image(image: NetworkImage(imgUrl), width: 250),
                  const SizedBox(height: 30),
                  Expanded(
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2.45,
                              mainAxisSpacing: 0),
                      children: [
                        Tapbox(
                            name: nameTab1,
                            namecolor: nameColor1,
                            correctcolor: correctColor1),
                        Tapbox(
                            name: nameTab2,
                            namecolor: nameColor2,
                            correctcolor: correctColor2),
                        Tapbox(
                            name: nameTab3,
                            namecolor: nameColor3,
                            correctcolor: correctColor3),
                        Tapbox(
                            name: nameTab4,
                            namecolor: nameColor4,
                            correctcolor: correctColor4),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Visibility(
                        visible: previous,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text("Previous"),
                        ),
                      ),
                      Visibility(
                        child: ElevatedButton(
                          child: const Text("Home"),
                          onPressed: () {
                            Navigator.popUntil(
                                context, (route) => route.isFirst);
                          },
                        ),
                      ),
                      Visibility(
                        visible: nextPlace != null,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      nextPlace ?? Container())),
                          child: const Text("Next"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2.45,
                              mainAxisSpacing: 0),
                      children: [
                        Tapbox(
                            name: nameTab1,
                            namecolor: nameColor1,
                            correctcolor: correctColor1),
                        Tapbox(
                            name: nameTab2,
                            namecolor: nameColor2,
                            correctcolor: correctColor2),
                        Tapbox(
                            name: nameTab3,
                            namecolor: nameColor3,
                            correctcolor: correctColor3),
                        Tapbox(
                            name: nameTab4,
                            namecolor: nameColor4,
                            correctcolor: correctColor4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

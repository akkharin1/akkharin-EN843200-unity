import 'package:flutter/material.dart';
import '../widgets/lab13p11.dart';

class KKUPlaceInfo extends StatefulWidget {
  const KKUPlaceInfo({Key? key}) : super(key: key);

  @override
  State<KKUPlaceInfo> createState() => _KKUPlaceInfoState();
}

class _KKUPlaceInfoState extends State<KKUPlaceInfo> {
  var placeInfo = {
    1: {
      "name": "Where is this place",
      "title": "Question 1",
      "imgUrl": "https://image.dek-d.com/27/0407/0292/117552609",
      'nameTab1': "Khon Kaen University",
      'nameColor1': Colors.blue,
      'correctColor1': Colors.green,
      'nameTab2': "Chiang Mai University",
      'nameColor2': Colors.blue,
      'correctColor2': Colors.red,
      'nameTab3': "Chulalongkorn University",
      'nameColor3': Colors.blue,
      'correctColor3': Colors.red,
      'nameTab4': "Mahidol University",
      'nameColor4': Colors.blue,
      'correctColor4': Colors.red,
    },
    2: {
      "name": "Where is this place",
      "title": "Question 2",
      "imgUrl": "https://image.dek-d.com/27/0407/0292/117552609",
      'nameTab1': "CMU",
      'nameColor1': Colors.blue,
      'correctColor1': Colors.red,
      'nameTab2': "KKU",
      'nameColor2': Colors.blue,
      'correctColor2': Colors.green,
      'nameTab3': "CU",
      'nameColor3': Colors.blue,
      'correctColor3': Colors.red,
      'nameTab4': "MU",
      'nameColor4': Colors.blue,
      'correctColor4': Colors.red,
    },
    3: {
      "name": "Where is this place",
      "title": "Question 3",
      "imgUrl": "https://image.dek-d.com/27/0407/0292/117552609",
      'nameTab1': "CMU",
      'nameColor1': Colors.blue,
      'correctColor1': Colors.red,
      'nameTab2': "CU",
      'nameColor2': Colors.blue,
      'correctColor2': Colors.red,
      'nameTab3': "KKU",
      'nameColor3': Colors.blue,
      'correctColor3': Colors.green,
      'nameTab4': "MU",
      'nameColor4': Colors.blue,
      'correctColor4': Colors.red,
    },
  };

  @override
  Widget build(BuildContext context) {
    return UniversityPlace(num: 1, info: placeInfo);
  }
}

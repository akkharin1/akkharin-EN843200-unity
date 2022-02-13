import 'package:flutter/material.dart';

class GetList extends StatefulWidget {
  const GetList({Key? key}) : super(key: key);

  @override
  _GetList createState() => _GetList();
}

class _GetList extends State<GetList> {
  final listitems =
      List<String>.generate(30, (index) => "Problem ${index + 1}");

  int i = 30;

  @override
  Widget build(BuildContext context) {
    const title = 'Widgets Exercise';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: listitems.length,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return ListTile(
              leading: const Icon(Icons.arrow_right),
              title: Text(listitems[index]),
              trailing: const Icon(Icons.star),
              onTap: () {
                SnackBar snackBar = SnackBar(
                  content: Text("Problem ${index + 1} is my favourite"),
                  action: SnackBarAction(
                    label: 'undo',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            );
          } else {
            return ListTile(
              leading: const Icon(Icons.arrow_right),
              title: Text(listitems[index]),
              onTap: () {
                SnackBar snackBar = SnackBar(
                  content: Text("Problem ${index + 1} is selected"),
                  action: SnackBarAction(
                    label: 'undo',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(
            () {
              i++;
            },
          );
          SnackBar snackBar = SnackBar(
            content: Text('Want to create a number of problems to ${i} '),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}

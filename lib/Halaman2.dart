import 'package:flutter/material.dart';

class Halaman2 extends StatefulWidget {
  const Halaman2({Key? key}) : super(key: key);

  @override
  State<Halaman2> createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {

  int _listView = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 1'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                _listView++;
              });
            }, child: Text('Button'),),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemCount: _listView,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index.isEven ? Colors.blue : Colors.red,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('List $index'),
                    trailing: Icon(Icons.add),
                  ),
                );
              },
            ),
          ],
        ),
      )


    );
  }
}

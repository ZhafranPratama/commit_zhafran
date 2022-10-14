import 'package:flutter/material.dart';
import 'package:commit/data/shared_prefs.dart';

class Halaman1 extends StatefulWidget {
  const Halaman1({Key? key}) : super(key: key);

  @override
  State<Halaman1> createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {

  int _gridView = 1;

  void loadValues() async {
    _gridView = (await SharedPrefs.getInt('intValue'))!;
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      _gridView++;
                      SharedPrefs.setInt('intValue', _gridView);
                      loadValues();
                    });
                  }, child: Text('Add List')),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      if(_gridView > 1){
                        _gridView--;
                        SharedPrefs.setInt('intValue', _gridView);
                        loadValues();
                      }
                    });
                  }, child: Text('Delete List')),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      _gridView = 1;
                      SharedPrefs.setInt('intValue', _gridView);
                      loadValues();
                    });
                  }, child: Text('Reset List')),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  physics: ScrollPhysics(parent: null),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    mainAxisExtent: 100,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: _gridView,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      color: index.isEven ? Colors.blue : Colors.red,
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

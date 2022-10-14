import 'package:flutter/material.dart';
import 'ui_helper/ui_helper.dart';
import 'package:commit/data/shared_prefs.dart';

class basement extends StatefulWidget {
  const basement({Key? key}) : super(key: key);

  @override
  State<basement> createState() => _basementState();
}

class _basementState extends State<basement> {

  TextEditingController strController = TextEditingController();
  String? strValue = '';

  void loadValues() async {
    strValue = await SharedPrefs.getString('StringValue');
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basement'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'String Value: $strValue',
                        textAlign: TextAlign.left,
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: strController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'Enter Value',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          horizontalSpaceMedium,
                          ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  strValue = strController.text;
                                  SharedPrefs.setString('StringValue', strValue!);
                                  loadValues();
                                });
                              },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.amber)
                            ),
                              child: Text('Save'),
                          ),
                          horizontalSpaceMedium,
                          ElevatedButton(
                            onPressed: (){
                              setState(() {
                                SharedPrefs.remove('StringValue');
                                loadValues();
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.red)
                            ),
                            child: Text('Delete'),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

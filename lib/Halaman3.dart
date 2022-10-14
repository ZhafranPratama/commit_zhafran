import 'package:commit/ui_helper/ui_helper.dart';
import 'package:flutter/material.dart';

class halaman3 extends StatefulWidget {
  const halaman3({Key? key}) : super(key: key);

  @override
  State<halaman3> createState() => _halaman3State();
}

class _halaman3State extends State<halaman3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 3'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              verticalSpaceTiny,
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.yellow,
                      ],
                      stops: [
                        0,
                        1,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                    ),
                ),
                child: Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CartoonCookies',
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              Container(
                child: Image.asset(
                  'assets/images/Logo smkn 2.png'
                ),
              ),
              verticalSpaceBig,
              Container(
                width: 200,
                height: 200,
                child: Image.network(
                  'https://www.webhozz.com/blog/wp-content/uploads/2021/01/flutter.png',
                  fit: BoxFit.contain,
                ),
              )
              // verticalSpaceTiny,
              // Container(
              //   width: 150,
              //   height: 150,
              //   color: Colors.blue,
              //   transform: Matrix4.rotationY(10),
              // ),
              // verticalSpaceTiny,
              // Container(
              //   width: 150,
              //   height: 150,
              //   color: Colors.blue,
              //   transform : Matrix4.rotationX(2),
              // ),
              // verticalSpaceTiny,
              // Container(
              //   width: 150,
              //   height: 150,
              //   color: Colors.blue,
              //   transform : Matrix4.skewX(0.5),
              // ),
              // verticalSpaceTiny,
              // Container(
              //   width: 150,
              //   height: 150,
              //   color: Colors.blue,
              //   transform : Matrix4.skew(0.1, 0.2),
              // ),
              // verticalSpaceBig,
              // verticalSpaceBig,
            ],
          ),
        ),
      )
    );
  }
}

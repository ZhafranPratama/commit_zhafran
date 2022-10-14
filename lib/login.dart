import 'package:flutter/material.dart';

import 'home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {

    void _navigateToHome(BuildContext context){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25,),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50,),
                  child: Text('SMKN 2 Bandung',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                ),
                Image.asset('assets/images/Logo smkn 2.png', width: 175, height: 175,),
                SizedBox(
                  height: 30,
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    icon: Icon(Icons.person),
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.lock),
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: (){
                        _navigateToHome(context);
                      },
                      child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

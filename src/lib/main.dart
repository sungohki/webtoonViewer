import 'package:flutter/material.dart';

void main() {
  runApp(App());
  // App == root of app ui
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF181818),
      // backgroundColor: Color.fromARGB(18, 18, 18, 1),
      // backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hey, Sungohki',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    )));
  }
}

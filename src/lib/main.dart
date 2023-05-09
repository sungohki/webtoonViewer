import 'package:flutter/material.dart';
import 'package:toon/widgets/button.dart';

void main() {
  runApp(const App());
  // App == root of app ui
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF181818),
      // backgroundColor: Color.fromARGB(18, 18, 18, 1),
      // backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
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
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              "Total Balance",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "\$5 194 482",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: 'Transfer',
                  bgColor: Color(0xFFF1B33B),
                  textColor: Colors.black,
                ),
                Button(
                  text: 'request',
                  bgColor: Color(0xFF1F2123),
                  textColor: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:toon/widgets/button.dart';
import 'package:toon/widgets/currency_card.dart';

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
      body: SingleChildScrollView(
        child: Padding(
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
                height: 60,
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
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.white.withOpacity(0.8)),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded,
                isInverted: false,
                overlap: 0,
              ),
              const CurrencyCard(
                name: 'Bitcoin',
                code: 'BTC',
                amount: '9 785',
                icon: Icons.currency_bitcoin_rounded,
                isInverted: true,
                overlap: -25,
              ),
              const CurrencyCard(
                name: 'Dollar',
                code: 'USD',
                amount: '428',
                icon: Icons.attach_money_outlined,
                isInverted: false,
                overlap: -50,
              ),
            ],
          ),
        ),
      ),
    )));
  }
}

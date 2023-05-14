import 'package:flutter/material.dart';
import 'package:toon/models/webtoon_model.dart';
import 'package:toon/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  @override
  void initState() {
    // First Init
    super.initState();
    waitForWebToons();
  }

  void waitForWebToons() async {
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // print(webtoons);
    // print(isLoading);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        // AppBar shadow degree
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "Today's WebToon",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      // body: ,
    );
  }
}

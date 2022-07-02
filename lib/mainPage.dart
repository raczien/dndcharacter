import 'package:dndcharacter/classPageContent.dart';
import 'package:dndcharacter/racePageContent.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  void _incrementIndex(bool b) {
    // maybe go back in input string
    setState(() {
      if (b) {
        index++;
      } else {
        index--;
      }
    });
  }

  List<Widget> _widgetOptions() {
    return [
      RacePageContent(incrementPageIndex: _incrementIndex),
      ClassPageContent(incrementPageIndex: _incrementIndex),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('asdasdasdasd'),
                Text('asdasdasdasd'),
                Text('asdasdasdasd'),
              ],
            ),
            Expanded(
              child: _widgetOptions()[index], //RacePageContent(),
            ),
          ],
        ),
      ),
    );
  }
}

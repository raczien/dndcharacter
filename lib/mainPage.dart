import 'package:dndcharacter/charactersheet.dart';
import 'package:dndcharacter/classPageContent.dart';
import 'package:dndcharacter/racePageContent.dart';
import 'package:flutter/material.dart';

import 'attributes.dart';
import 'characterInfo.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  Color activeColor = Colors.teal.shade900;
  Color? inactiveColor = Colors.grey[800];

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
      Attributes(incrementPageIndex: _incrementIndex),
      const CharacterInfo(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      color: index == 0 ? activeColor : inactiveColor,
                      elevation: 8,
                      shadowColor: Colors.white,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Rasse',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: (index == 0)
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: index == 1 ? activeColor : inactiveColor,
                      elevation: 8,
                      shadowColor: Colors.white,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Klasse',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: (index == 1)
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: index == 2 ? activeColor : inactiveColor,
                      elevation: 8,
                      shadowColor: Colors.white,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Attribute',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: (index == 2)
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: index == 3 ? activeColor : inactiveColor,
                      elevation: 8,
                      shadowColor: Colors.white,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Infos',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: (index == 3)
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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

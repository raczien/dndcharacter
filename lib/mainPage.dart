import 'package:dndcharacter/charactersheet.dart';
import 'package:dndcharacter/classPageContent.dart';
import 'package:dndcharacter/racePageContent.dart';
import 'package:dndcharacter/responsive.dart';
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
  Color activeColor = Colors.teal.shade700;
  Color? inactiveColor = Colors.grey[800];

  void _incrementIndex(bool b) {
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
            Container(
              decoration: BoxDecoration(
                color: Colors.teal.shade900,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Card(
                        color: index == 0 ? activeColor : inactiveColor,
                        elevation: index == 0 ? 6 : 0,
                        shadowColor: Colors.white,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Rasse',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: (index == 0)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Card(
                        color: index == 1 ? activeColor : inactiveColor,
                        elevation: index == 1 ? 6 : 0,
                        shadowColor: Colors.white,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Klasse',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: (index == 1)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (CharacterSheet.raceSet) {
                          setState(() {
                            index = 2;
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            duration: const Duration(seconds: 2),
                            content: Text(
                              "Bitte Rasse setzen.",
                              style: TextStyle(
                                  fontSize:
                                      Responsive.isDesktop(context) ? 30 : 18),
                            ),
                          ));
                        }
                      },
                      child: Card(
                        color: index == 2 ? activeColor : inactiveColor,
                        elevation: index == 2 ? 6 : 0,
                        shadowColor: Colors.white,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Attribute',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: (index == 2)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (CharacterSheet.classSet &&
                            CharacterSheet.raceSet &&
                            CharacterSheet.attributesSet) {
                          setState(() {
                            index = 3;
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            duration: const Duration(seconds: 2),
                            content: Text(
                              "Bitte Rasse, Klasse und Attribute setzen.",
                              style: TextStyle(
                                  fontSize:
                                      Responsive.isDesktop(context) ? 30 : 18),
                            ),
                          ));
                        }
                      },
                      child: Card(
                        color: index == 3 ? activeColor : inactiveColor,
                        elevation: index == 3 ? 6 : 0,
                        shadowColor: Colors.white,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Infos',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: (index == 3)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IndexedStack(
                alignment: AlignmentDirectional.topCenter,
                index: index,
                children: [
                  ..._widgetOptions(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

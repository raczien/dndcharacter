import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool customTileExpanded = false;
  String pickedGender = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: List.generate(races.length, (index) {
                        var subraces = races[index]['subraces']
                            as List<Map<String, Object>>;
                        return subraces.length > 1
                            ? ExpansionTile(
                                childrenPadding: EdgeInsets.all(10),
                                title: TileData(
                                  subraces: subraces,
                                  index: index,
                                  pickedGender: pickedGender,
                                ),
                                children: List.generate(
                                    subraces.length,
                                    (index) => ListTile(
                                          onTap: () {
                                            print(subraces[index]['name']);
                                          },
                                          title: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 15, left: 40),
                                                child: Image.asset(
                                                  fit: BoxFit.contain,
                                                  height: 150.0,
                                                  width: 150.0,
                                                  subraces[index][pickedGender]
                                                      as String,
                                                ),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  '${subraces[index]['name']}',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      TextStyle(fontSize: 40),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                              )
                            : ListTile(
                                onTap: () {
                                  print(races[index]['race']);
                                },
                                title: TileData(
                                  subraces: subraces,
                                  index: index,
                                  pickedGender: pickedGender,
                                ),
                              );
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (pickedGender == 'male') {
                              pickedGender = 'female';
                            } else {
                              pickedGender = 'male';
                            }
                          });
                        },
                        child: Text('Change Gender')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TileData extends StatelessWidget {
  const TileData({
    Key? key,
    required this.subraces,
    required this.index,
    required this.pickedGender,
  }) : super(key: key);

  final List<Map<String, Object>> subraces;
  final int index;
  final String pickedGender;
  @override
  Widget build(BuildContext context) {
    String amount = subraces.length == 1 ? '' : '(${subraces.length})';
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Image.asset(
            fit: BoxFit.contain,
            height: 150.0,
            width: 150.0,
            subraces.first[pickedGender] as String,
          ),
        ),
        Flexible(
          child: Text(
            '${races[index]['race']} $amount',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }
}

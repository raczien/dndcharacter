import 'package:dndcharacter/responsive.dart';
import 'package:dndcharacter/widgets/characterDetails.dart';
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
      debugShowCheckedModeBanner: false,
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
  bool racePicked = false;
  late String pickedRaceName;
  late String pickedRaceImage;

  void setPickedRaceFields(String name, String img) {
    setState(() {
      pickedRaceName = name;
      pickedRaceImage = img;
      racePicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('Race'),
                  Text('Class'),
                  Text('Abilities'),
                  Text('Description'),
                ],
              ),
              buildGenderChanger(),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: SizedBox(
                      width: Responsive.isDesktop(context)
                          ? MediaQuery.of(context).size.width / 2
                          : double.infinity,
                      child: Column(
                        children: [
                          ...List.generate(races.length, (index) {
                            var subraces = races[index]['subraces']
                                as List<Map<String, Object>>;
                            return subraces.length > 1
                                ? ExpansionTile(
                                    textColor: Colors.teal.shade900,
                                    childrenPadding: const EdgeInsets.all(10),
                                    title: TileData(
                                      subraces: subraces,
                                      index: index,
                                      pickedGender: pickedGender,
                                    ),
                                    children: List.generate(
                                        subraces.length,
                                        (index) => ListTile(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return CharacterDetails(ctx: context,name: subraces[index]
                                                                  ['name']
                                                              as String, img: subraces[index]
                                                                  [pickedGender]
                                                              as String, desc: subraces[index][
                                                                  'description']
                                                              as String, size: subraces[index]
                                                                  ['size']
                                                              as String, kg: subraces[index]
                                                                  ['weight']
                                                              as String, age: subraces[index]
                                                                  ['maxAge']
                                                              as String, racials: subraces[index]['racials'] as List<String>);
                                                    });
                                              },
                                              title: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15,
                                                            left: 40),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          width: 2,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        fit: BoxFit.cover,
                                                        height:
                                                            Responsive.isMobile(
                                                                    context)
                                                                ? 60.0
                                                                : 140.0,
                                                        width:
                                                            Responsive.isMobile(
                                                                    context)
                                                                ? 60.0
                                                                : 140.0,
                                                        subraces[index]
                                                                [pickedGender]
                                                            as String,
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      '${subraces[index]['name']}',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          color: Colors
                                                              .teal.shade900,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: Responsive
                                                                  .isMobile(
                                                                      context)
                                                              ? 28.0
                                                              : 40),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  )
                                : ListTile(
                                    onTap: () {
                                      print(races[index]['race']);
                                      print(subraces[0]['racials']);
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return CharacterDetails(ctx: context, name: subraces[0]['name'] as String, img: subraces[0][pickedGender]
                                                  as String, desc: subraces[0]['description']
                                                  as String, size: subraces[0]['size'] as String, kg: subraces[0]['weight'] as String, age: subraces[0]['maxAge'] as String, racials: subraces[0]['racials'] as List<String>);
                                          });
                                    },
                                    title: TileData(
                                      subraces: subraces,
                                      index: index,
                                      pickedGender: pickedGender,
                                    ),
                                  );
                          })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  SizedBox buildGenderChanger() {
    return SizedBox(
      width: Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width / 3
          : double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //Responsive.isMobile(context)?MainAxisAlignment.start:
        children: [
          Icon(
            Icons.male,
            size: 60,
            color: pickedGender == 'male' ? Colors.teal : Colors.grey,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.teal),
            onPressed: () {
              setState(() {
                if (pickedGender == 'male') {
                  pickedGender = 'female';
                } else {
                  pickedGender = 'male';
                }
              });
            },
            child: const Text(
              'Geschlecht',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Icon(
            Icons.female,
            size: 60,
            color: pickedGender == 'female' ? Colors.teal : Colors.grey,
          ),
        ],
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
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
            ),
            child: Image.asset(
              fit: BoxFit.cover,
              height: Responsive.isMobile(context) ? 60.0 : 140.0,
              width: Responsive.isMobile(context) ? 60.0 : 140.0,
              subraces.first[pickedGender] as String,
            ),
          ),
        ),
        Flexible(
          child: Text(
            '${races[index]['race']} $amount',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.teal.shade900,
            ),
          ),
        ),
      ],
    );
  }
}

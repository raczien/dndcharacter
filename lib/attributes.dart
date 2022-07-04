import 'package:dndcharacter/responsive.dart';
import 'package:flutter/material.dart';

class Attributes extends StatefulWidget {
  const Attributes({Key? key, required this.incrementPageIndex})
      : super(key: key);
  final Function incrementPageIndex;

  @override
  _AttributesState createState() => _AttributesState();
}

class _AttributesState extends State<Attributes> {
  final List<String> proficiencyValues = [
    '15',
    '14',
    '13',
    '12',
    '10',
    '8',
  ];
  List<String> pickedValues = [];

  List<String> getFreeValues() {
    List<String> freeValues = [];
    for (var element in proficiencyValues) {
      if (!pickedValues.contains(element)) {
        freeValues.add(element);
      }
    }
    return freeValues;
  }

  String str = '';
  String ges = '';
  String con = '';
  String inl = '';
  String wis = '';
  String cha = '';

  TextStyle titleStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  TextStyle valStyle = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  double cardWidth = 130.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text(
                'Der vermutlich wichtigste Teil: die Attribute.\nAus den Attributen Leiten sich die Boni ab, die ihr beim Würfeln benötigt. Ihr könnt folgende Werte auf die 6 Attribute verteilen:\n 15, 14, 13, 12, 10, 8',
                style: TextStyle(fontSize: 34),
              ),
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context)
                ? MediaQuery.of(context).size.width / 2
                : double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: cardWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'STÄRKE',
                              style: titleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ExpansionTile(
                            key: GlobalKey(),
                            title: Text(
                              str,
                              style: valStyle,
                            ),
                            children: List.generate(
                              proficiencyValues.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Text(
                                    proficiencyValues[index],
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (str != '') {
                                        proficiencyValues.add(str);
                                        /*proficiencyValues.sort((num1, num2) =>
                                            int.parse(num1)
                                                .compareTo(int.parse(num2)));*/
                                      }
                                      str = proficiencyValues[index];
                                      proficiencyValues.remove(str);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: cardWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'GESCHICK',
                              style: titleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ExpansionTile(
                            key: GlobalKey(),
                            title: Text(
                              ges,
                              style: valStyle,
                            ),
                            children: List.generate(
                              proficiencyValues.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Text(
                                    proficiencyValues[index],
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (ges != '') {
                                        proficiencyValues.add(ges);
                                        /*proficiencyValues.sort((num1, num2) =>
                                            int.parse(num1)
                                                .compareTo(int.parse(num2)));*/
                                      }
                                      ges = proficiencyValues[index];
                                      proficiencyValues.remove(ges);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: cardWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'KONSTITUTION',
                              style: titleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ExpansionTile(
                            key: GlobalKey(),
                            title: Text(
                              con,
                              style: valStyle,
                            ),
                            children: List.generate(
                              proficiencyValues.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Text(
                                    proficiencyValues[index],
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (con != '') {
                                        proficiencyValues.add(con);
                                        /*proficiencyValues.sort((num1, num2) =>
                                            int.parse(num1)
                                                .compareTo(int.parse(num2)));*/
                                      }
                                      con = proficiencyValues[index];
                                      proficiencyValues.remove(con);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: cardWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'INTELLIGENZ',
                              style: titleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ExpansionTile(
                            key: GlobalKey(),
                            title: Text(
                              inl,
                              style: valStyle,
                            ),
                            children: List.generate(
                              proficiencyValues.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Text(
                                    proficiencyValues[index],
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (inl != '') {
                                        proficiencyValues.add(inl);
                                        /*proficiencyValues.sort((num1, num2) =>
                                            int.parse(num1)
                                                .compareTo(int.parse(num2)));*/
                                      }
                                      inl = proficiencyValues[index];
                                      proficiencyValues.remove(inl);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: cardWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'WEISHEIT',
                              style: titleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ExpansionTile(
                            key: GlobalKey(),
                            title: Text(
                              wis,
                              style: valStyle,
                            ),
                            children: List.generate(
                              proficiencyValues.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Text(
                                    proficiencyValues[index],
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (wis != '') {
                                        proficiencyValues.add(wis);
                                        /*proficiencyValues.sort((num1, num2) =>
                                            int.parse(num1)
                                                .compareTo(int.parse(num2)));*/
                                      }
                                      wis = proficiencyValues[index];
                                      proficiencyValues.remove(wis);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: cardWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'CHARISMA',
                              style: titleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ExpansionTile(
                            key: GlobalKey(),
                            title: Text(
                              cha,
                              style: valStyle,
                            ),
                            children: List.generate(
                              proficiencyValues.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Text(
                                    proficiencyValues[index],
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (cha != '') {
                                        proficiencyValues.add(cha);
                                        /*proficiencyValues.sort((num1, num2) =>
                                            int.parse(num1)
                                                .compareTo(int.parse(num2)));*/
                                      }
                                      cha = proficiencyValues[index];
                                      proficiencyValues.remove(cha);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

/*Padding buildStatPicker(String name, String val) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        decoration: const BoxDecoration(color: Colors.black26),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ExpansionTile(
              key: GlobalKey(),
              title: Text(
                val,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: List.generate(
                proficiencyValues.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Text(
                      proficiencyValues[index],
                      style: const TextStyle(fontSize: 26),
                    ),
                    onTap: () {
                      print('TAPITAP');
                      print(val);
                      setState(() {
                        print(proficiencyValues[index]);
                        if (val != '') {
                          proficiencyValues.add(val);
                          proficiencyValues.sort((num1, num2) =>
                              int.parse(num1).compareTo(int.parse(num2)));
                        }
                        if (val == '')
                          print('NONE');
                        else
                          print(val);
                        val = proficiencyValues[index];
                        print(val);
                        proficiencyValues.remove(val);
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }*/
}

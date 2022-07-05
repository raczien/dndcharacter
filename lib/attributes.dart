import 'package:dndcharacter/charactersheet.dart';
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

  String getIndexName(int index) {
    switch (index) {
      case 0:
        return 'STÄRKE';
      case 1:
        return 'GESCHICK';
      case 2:
        return 'KONSTITUION';
      case 3:
        return 'INTELLIGENZ';
      case 4:
        return 'WEISHEIT';
      case 5:
        return 'CHARISMA';
      default:
        return '';
    }
  }

  int getAttributeFromIndexes(int index) {
    switch (index) {
      case 0:
        return str != '' ? int.parse(str) + CharacterSheet.boni[0] : 0;
      case 1:
        return ges != '' ? int.parse(ges) + CharacterSheet.boni[1] : 0;
      case 2:
        return con != '' ? int.parse(con) + CharacterSheet.boni[2] : 0;
      case 3:
        return inl != '' ? int.parse(inl) + CharacterSheet.boni[3] : 0;
      case 4:
        return wis != '' ? int.parse(wis) + CharacterSheet.boni[4] : 0;
      case 5:
        return cha != '' ? int.parse(cha) + CharacterSheet.boni[5] : 0;
      default:
        return 0;
    }
  }

  bool everythingSet() {
    if (str != '' &&
        ges != '' &&
        con != '' &&
        inl != '' &&
        wis != '' &&
        cha != '') {
      return true;
    } else {
      return false;
    }
  }

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
            child: Padding(
              padding: EdgeInsets.all(13.0),
              child: Text(
                'Ihr könnt folgende Werte auf die 6 Attribute verteilen:\n 15, 14, 13, 12, 10, 8',
                style:
                    TextStyle(fontSize: Responsive.isMobile(context) ? 20 : 30),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Tooltip(
            textStyle: const TextStyle(fontSize: 22, color: Colors.black),
            message: 'Beispiel:\n'
                'Ihr wollt einen Angriff ausweichen und müsst auf Geschick würfeln.\n'
                'Ihr würfelt eine 11. Auf diese 11 Wird dann der Bonus drauf addiert (z.B. \'+2\').\n'
                'Somit habt ihr insgesammt eine 13 gewürfelt.\n'
                'Berechnung: ((Attributswert + VB) - 10) / 2',
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Card(
                color: Colors.teal.shade800,
                elevation: 8,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: const [
                      Text(
                        'Boni:',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Diese Boni werden beim Würfeln auf dein Ergebnis addiert.',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context)
                ? MediaQuery.of(context).size.width / 2
                : double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                var x = getAttributeFromIndexes(index) == 0
                    ? 0
                    : (getAttributeFromIndexes(index) - 10) ~/ 2;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: cardWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Column(
                          children: [
                            Text(getIndexName(index)),
                            Text(
                              x > 0 ? '+$x' : '$x',
                              style: const TextStyle(fontSize: 30),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Tooltip(
            textStyle: const TextStyle(fontSize: 22, color: Colors.black),
            message:
                'Bitte Attributsfelder setzen. Dazu die DropDowns unten benutzen.',
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Card(
                color: Colors.teal.shade800,
                elevation: 8,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: const [
                      Text(
                        'Attributspunkte:',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Hieraus errechnen sich die Boni.\n(VB = Völkerbonus)',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red.shade900),
            onPressed: () {
              setState(() {
                proficiencyValues.clear();
                proficiencyValues.addAll(['15', '14', '13', '12', '10', '8']);
                str = '';
                ges = '';
                con = '';
                inl = '';
                wis = '';
                cha = '';
              });
            },
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                'RESET',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'VB: +${CharacterSheet.boni[0]}',
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'VB: +${CharacterSheet.boni[1]}',
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'VB: +${CharacterSheet.boni[2]}',
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'VB: +${CharacterSheet.boni[3]}',
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'VB: +${CharacterSheet.boni[4]}',
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'VB: +${CharacterSheet.boni[5]}',
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
          if (everythingSet())
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
              onPressed: () {
                List<int> boni = [];
                for (int i = 0; i <= 5; i++) {
                  var x = getAttributeFromIndexes(i) == 0
                      ? 0
                      : (getAttributeFromIndexes(i) - 10) ~/ 2;
                  boni.add(x);
                }
                List<int> finalBoni = [];
                finalBoni.addAll([
                  int.parse(str),
                  int.parse(ges),
                  int.parse(con),
                  int.parse(inl),
                  int.parse(wis),
                  int.parse(cha),
                ]);
                print(boni);
                print(finalBoni);
                CharacterSheet.boniValues = boni;
                CharacterSheet.attributes = finalBoni;
                widget.incrementPageIndex(true);
              },
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Weiter',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

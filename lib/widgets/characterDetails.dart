import 'package:dndcharacter/charactersheet.dart';
import 'package:flutter/material.dart';

import '../responsive.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({
    Key? key,
    required this.ctx,
    required this.name,
    required this.img,
    required this.desc,
    required this.size,
    required this.kg,
    required this.age,
    required this.racials,
    required this.increment,
    required this.boni,
    required this.gender,
  }) : super(key: key);

  final BuildContext ctx;
  final String name;
  final String img;
  final String desc;
  final String size;
  final String kg;
  final String age;
  final List<String> racials;
  final Function increment;
  final List<int> boni;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 16,
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.asset(
                      img,
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.height / 4,
                    ), //, fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (Responsive.isDesktop(context))
                    buildDetails(MediaQuery.of(context).size.height / 3),
                ],
              ),
            ),
            if (!Responsive.isDesktop(context))
              buildDetails(MediaQuery.of(context).size.height / 3),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(desc),
            ),
            Wrap(
              children: List.generate(
                  racials.length,
                  (index) => buildRacials(
                      racials[index],
                      racials[index].startsWith('-')
                          ? Colors.red
                          : Colors.green)),
            ),
            Wrap(
              children: List.generate(
                6,
                (i) {
                  if (boni[i] > 0) {
                    return Card(
                      elevation: 8,
                      color: Colors.grey,
                      margin: const EdgeInsets.all(20),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('${getBoniString(i)}: +${boni[i]}'),
                      ),
                    );
                  } else {
                    return const Text('');
                  }
                },
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red.shade900),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Zurück',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade900),
                      onPressed: () {
                        // TODO: Felder setzen
                        CharacterSheet.gender = gender;
                        CharacterSheet.boni = boni;
                        CharacterSheet.race = name;
                        CharacterSheet.racials = racials;
                        CharacterSheet.raceSet = true;
                        increment(true);
                        if(CharacterSheet.classSet) {
                          increment(true);
                        }
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Bestätigen',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card buildRacials(String name, Color color) {
    return Card(
      elevation: 8,
      color: color,
      shadowColor: color,
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }

  SizedBox buildDetails(width) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            Row(
              children: [const Text('Größe:'), const Spacer(), Text(size)],
            ),
            Row(
              children: [const Text('Gewicht:'), const Spacer(), Text(kg)],
            ),
            Row(
              children: [const Text('Alter:'), const Spacer(), Text(age)],
            ),
          ],
        ),
      ),
    );
  }

  String getBoniString(int i) {
    // Str, Ges, Kon, Int, Wei, Cha
    switch (i) {
      case 0:
        return 'Stärke';
      case 1:
        return 'Geschick';
      case 2:
        return 'Konstitution';
      case 3:
        return 'Intelligenz';
      case 4:
        return 'Weisheit';
      case 5:
        return 'Charisma';
      default:
        return 'error';
    }
  }
}

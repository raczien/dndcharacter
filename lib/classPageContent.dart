import 'package:dndcharacter/data.dart';
import 'package:dndcharacter/responsive.dart';
import 'package:flutter/material.dart';

class ClassPageContent extends StatelessWidget {
  const ClassPageContent({Key? key, required this.incrementPageIndex})
      : super(key: key);
  final Function incrementPageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: Responsive.isDesktop(context)
                  ? MediaQuery.of(context).size.width / 2
                  : double.infinity,
              child: Column(
                children: List.generate(
                  classes.length,
                  (index) => ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    trailing: const Icon(
                      Icons.arrow_downward_outlined,
                      size: 40,
                    ),
                    title: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                              ),
                            ),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              height:
                                  Responsive.isMobile(context) ? 60.0 : 110.0,
                              width:
                                  Responsive.isMobile(context) ? 60.0 : 110.0,
                              classes[index]['image'] as String,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '${classes[index]['name']}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.teal.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    children: [
                      buildClassDetails(index, 'Beschreibung', 'description'),
                      const Divider(),
                      buildClassDetails(index, 'Schadenswürfel', 'dmgdice'),
                      const Divider(),
                      buildClassDetails(index, 'Primär- Stat', 'primaryStat'),
                      const Divider(),
                      buildClassDetails(index, 'Save Stats', 'save'),
                      const Divider(),
                      buildClassDetails(index, 'Rüstung', 'armor'),
                      const Divider(),
                      buildClassDetails(index, 'Waffen', 'weapons'),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0, right: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text('Fertigkeiten:',
                                style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            ...List.generate(
                                (classes[index]['skills'] as List<dynamic>)
                                    .length, (i) {
                              var skills =
                                  classes[index]['skills'] as List<dynamic>;
                              return Text(
                                getSkillName(skills[i]),
                                softWrap: true,
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      if ((classes[index]['skillNum']) as int >
                          ((classes[index]['skills'] as List<dynamic>).length))
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 100.0, right: 100),
                          child: ((classes[index]['skills'] as List<dynamic>)
                                  .isNotEmpty)
                              ? Text(
                                  'Und ${((classes[index]['skillNum']) as int) - (classes[index]['skills'] as List<dynamic>).length} deiner Wahl.',
                                  softWrap: true,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                )
                              : Text(
                                  '${((classes[index]['skillNum']) as int) - (classes[index]['skills'] as List<dynamic>).length} deiner Wahl.',
                                  softWrap: true,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green.shade700),
                            child: const Text(
                              'Bestätigen',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding buildClassDetails(int index, String typeName, String type) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0, right: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text('$typeName:',
                style: const TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          Text(
            '${classes[index][type]}',
            softWrap: true,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

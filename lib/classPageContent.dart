import 'package:dndcharacter/charactersheet.dart';
import 'package:dndcharacter/data.dart';
import 'package:dndcharacter/responsive.dart';
import 'package:flutter/material.dart';

class ClassPageContent extends StatelessWidget {
  const ClassPageContent({Key? key, required this.incrementPageIndex})
      : super(key: key);
  final Function incrementPageIndex;

  @override
  Widget build(BuildContext context) {
    ScrollController sc = ScrollController();
    return Column(
      children: [
        if (CharacterSheet.classSet)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Gewählte Klasse:',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      '${CharacterSheet.classe}',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        Expanded(
          child: SingleChildScrollView(
            controller: sc,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
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
                    key: GlobalKey(),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    trailing: Icon(
                      Icons.arrow_downward_outlined,
                      size: 40,
                      color: Colors.teal.shade800,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100),
                        child: Text('Skills:',
                            style: TextStyle(
                                fontSize: 34,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0, right: 100),
                        child: Wrap(
                          children: List.generate(
                              (classes[index]['useables'] as List<int>).length,
                              (idx) {
                            List<int> skillnum =
                                classes[index]['useables'] as List<int>;
                            return Tooltip(
                              textStyle: const TextStyle(
                                  fontSize: 22, color: Colors.black),
                              message: skills[skillnum[idx] - 1]['descr']
                                  .toString()
                                  .replaceAll('^^KLASSE^^',
                                      classes[index]['name'] as String)
                                  .replaceAll(
                                      '^^NUM^^',
                                      getSkillNumberForClass(
                                              classes[index]['name'] as String)
                                          .toString()),
                              child: Card(
                                color: Colors.teal.shade800,
                                elevation: 8,
                                shadowColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    skills[skillnum[idx] - 1]['name']
                                        .toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const Divider(),
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
                            onPressed: () {
                              int skillSetNum = ((classes[index]['skillNum'])
                                      as int) -
                                  (classes[index]['skills'] as List<dynamic>)
                                      .length;
                              if (skillSetNum > 0 ||
                                  (classes[index]['useables'] as List<int>)
                                      .contains(2)) {
                                List<int> availableSkills = [];
                                var classSkills =
                                    classes[index]['skills'] as List<dynamic>;
                                for (var skill in allSkills) {
                                  if (!classSkills.contains(skill)) {
                                    availableSkills.add(skill);
                                  }
                                }
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      sc.jumpTo(0);
                                      return SkillChooseDialog(
                                        skillSetNum: skillSetNum,
                                        availableSkills: availableSkills,
                                        incrementPageIndex: incrementPageIndex,
                                        classIndex: index,
                                      );
                                    });
                              } else {
                                CharacterSheet.classe =
                                    classes[index]['name'] as String;
                                CharacterSheet.saveIds.addAll(
                                    classes[index]['saveIds'] as List<int>);
                                CharacterSheet.damageDice =
                                    classes[index]['dmgdice'] as String;
                                CharacterSheet.primaryStats =
                                    classes[index]['primaryStat'] as String;
                                CharacterSheet.saveStats =
                                    classes[index]['save'] as String;
                                CharacterSheet.armor =
                                    classes[index]['armor'] as String;
                                CharacterSheet.weapons =
                                    classes[index]['weapons'] as String;
                                CharacterSheet.perks =
                                    classes[index]['skills'] as List<int>;
                                CharacterSheet.classSet = true;
                                CharacterSheet.skills = '';
                                for (int i = 0;
                                    i <
                                        (classes[index]['useables']
                                                as List<int>)
                                            .length;
                                    i++) {
                                  List<int> skillnum =
                                      classes[index]['useables'] as List<int>;
                                  String skillName = skills[skillnum[i] - 1]
                                          ['name']
                                      .toString();
                                  CharacterSheet.skills =
                                      '${CharacterSheet.skills}\n ${skillName}';
                                }
                                sc.jumpTo(0);
                                if (CharacterSheet.raceSet) {
                                  incrementPageIndex(true);
                                } else {
                                  incrementPageIndex(false);
                                }
                              }
                            },
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

class SkillChooseDialog extends StatefulWidget {
  const SkillChooseDialog({
    Key? key,
    required this.skillSetNum,
    required this.availableSkills,
    required this.incrementPageIndex,
    required this.classIndex,
  }) : super(key: key);

  final int skillSetNum;
  final List<int> availableSkills;
  final Function incrementPageIndex;
  final int classIndex;

  @override
  _SkillChooseDialogState createState() => _SkillChooseDialogState();
}

class _SkillChooseDialogState extends State<SkillChooseDialog> {
  String selectedValue = 'Bitte auswählen';
  List<int> savedSkills = [];

  bool saveSkill(int skill, int old) {
    if (!savedSkills.contains(skill)) {
      if (savedSkills.contains(old)) {
        savedSkills.remove(old);
      }
      savedSkills.add(skill);
      return true;
    } else {
      return false;
    }
  }

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
              'Diese Klasse kann ${widget.skillSetNum == 0 ? 'keine weiteren' : '${widget.skillSetNum} weitere'} Fähigkeiten setzen.',
              style: const TextStyle(fontSize: 30),
            ),
            ...List.generate(
              widget.skillSetNum,
              (idx) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: SkillDropDown(
                  availableSkills: widget.availableSkills,
                  saveSkill: saveSkill,
                ),
              ),
            ),
            const Divider(),
            if ((classes[widget.classIndex]['useables'] as List<int>)
                .contains(2))
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Zauber auswählen',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            if ((classes[widget.classIndex]['useables'] as List<int>)
                .contains(2))
              ...List.generate(
                getSkillNumberForClass(
                    classes[widget.classIndex]['name'] as String),
                (i) => SkillChooser(index: widget.classIndex),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if ((savedSkills.length == widget.skillSetNum) &&
                      (getSkillNumberForClass(
                              classes[widget.classIndex]['name'] as String) ==
                          CharacterSheet.spells.length)) {
                    List<int> allSkills = [];
                    var x =
                        classes[widget.classIndex]['skills'] as List<dynamic>;
                    allSkills = allSkills + savedSkills;
                    if (x.isNotEmpty) {
                      allSkills = allSkills +
                          (classes[widget.classIndex]['skills'] as List<int>);
                    }
                    CharacterSheet.classe =
                        classes[widget.classIndex]['name'] as String;
                    CharacterSheet.saveIds.addAll(
                        classes[widget.classIndex]['saveIds'] as List<int>);
                    CharacterSheet.damageDice =
                        classes[widget.classIndex]['dmgdice'] as String;
                    CharacterSheet.primaryStats =
                        classes[widget.classIndex]['primaryStat'] as String;
                    CharacterSheet.saveStats =
                        classes[widget.classIndex]['save'] as String;
                    CharacterSheet.armor =
                        classes[widget.classIndex]['armor'] as String;
                    CharacterSheet.weapons =
                        classes[widget.classIndex]['weapons'] as String;
                    CharacterSheet.perks = allSkills;
                    CharacterSheet.classSet = true;

                    CharacterSheet.skills = '';
                    for (int i = 0;
                        i <
                            (classes[widget.classIndex]['useables']
                                    as List<int>)
                                .length;
                        i++) {
                      List<int> skillnum =
                          classes[widget.classIndex]['useables'] as List<int>;
                      String skillName =
                          skills[skillnum[i] - 1]['name'].toString();
                      CharacterSheet.skills =
                          '${CharacterSheet.skills}\n ${skillName}';
                    }

                    if (CharacterSheet.raceSet) {
                      widget.incrementPageIndex(true);
                    } else {
                      widget.incrementPageIndex(false);
                    }
                    Navigator.pop(context);
                    didReset = false;
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        "Bitte alle Fertigkeiten- und Zauberslots füllen.",
                        style: TextStyle(
                            fontSize: Responsive.isDesktop(context) ? 30 : 18),
                      ),
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(primary: Colors.green.shade700),
                child: const Text(
                  'Bestätigen',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillDropDown extends StatefulWidget {
  final List<int> availableSkills;
  final Function saveSkill;

  const SkillDropDown({
    super.key,
    required this.availableSkills,
    required this.saveSkill,
  });

  @override
  _SkillDropDownState createState() => _SkillDropDownState();
}

class _SkillDropDownState extends State<SkillDropDown> {
  String selectedValue = 'Bitte auswählen';
  bool isLocked = false;

  @override
  Widget build(BuildContext context) {
    double fontSize = Responsive.isDesktop(context) ? 26.0 : 20.0;
    return IgnorePointer(
      ignoring: isLocked,
      child: DropdownButton(
          value: selectedValue,
          items: [
            ...List.generate(
              widget.availableSkills.length,
              (i) => DropdownMenuItem(
                value: getSkillName(widget.availableSkills[i]),
                child: Text(
                  getSkillName(widget.availableSkills[i]),
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'Bitte auswählen',
              child: Text(
                'Bitte auswählen',
                style: TextStyle(fontSize: fontSize),
              ),
            ),
          ],
          onChanged: (String? newValue) {
            String oldSelected = selectedValue;
            setState(() {
              if (newValue != 'Bitte auswählen') {
                selectedValue = newValue!;
              }
              if (selectedValue != 'Bitte auswählen' &&
                  newValue != 'Bitte auswählen') {
                bool callback = widget.saveSkill(
                    getSkillId(selectedValue), getSkillId(oldSelected));
                if (!callback) {
                  selectedValue = 'Bitte auswählen';
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      "Diese Fähigkeit ist bereits ausgewählt.",
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 30 : 18),
                    ),
                  ));
                }
              }
            });
          }),
    );
  }
}

bool didReset = false;

class SkillChooser extends StatefulWidget {
  final int index;

  const SkillChooser({super.key, required this.index});

  @override
  _SkillChooserState createState() => _SkillChooserState();
}

class _SkillChooserState extends State<SkillChooser> {
  String selectedValue = 'Bitte auswählen';
  bool isLocked = false;
  @override
  Widget build(BuildContext context) {
    double fontSize = Responsive.isDesktop(context) ? 26.0 : 20.0;
    var availableSkills = getSkills(classes[widget.index]['name'] as String);
    return IgnorePointer(
      ignoring: isLocked,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            value: selectedValue,
            items: [
              ...List.generate(
                availableSkills.length,
                (k) => DropdownMenuItem(
                  value: availableSkills[k]['name'] as String,
                  child: Tooltip(
                    message:
                        '${availableSkills[k]['description']}\n\nReichweite:\n${availableSkills[k]['range']}\n\nEffektdauer:\n${availableSkills[k]['duration']}',
                    textStyle:
                        TextStyle(fontSize: fontSize, color: Colors.black),
                    child: Text(
                      availableSkills[k]['name'] as String,
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ),
                ),
              ),
              const DropdownMenuItem(
                value: 'Bitte auswählen',
                child: Text(
                  'Bitte auswählen',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
            onChanged: (String? newValue) {
              if ((CharacterSheet.classe != classes[widget.index]['name']) &&
                  CharacterSheet.classSet &&
                  !didReset) {
                print('class change detected. Clearing saved spells.');
                CharacterSheet.spells.clear();
                didReset = true;
              }
              if (newValue != 'Bitte auswählen' && selectedValue != newValue) {
                if (CharacterSheet.spells.contains(newValue)) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(seconds: 2),
                    content: Text(
                      "Dieser Zauber ist bereits ausgewählt.",
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 30 : 18),
                    ),
                  ));
                } else {
                  setState(() {
                    selectedValue = newValue!;
                    CharacterSheet.spells.add(selectedValue);
                  });
                }
              }
            },
          ),
        ),
      ),
    );
  }
}

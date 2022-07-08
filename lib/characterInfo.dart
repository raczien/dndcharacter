import 'dart:convert';
import 'dart:html';

import 'package:dndcharacter/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'charactersheet.dart';
import 'data.dart';

class CharacterInfo extends StatefulWidget {
  const CharacterInfo({Key? key}) : super(key: key);

  @override
  _CharacterInfoState createState() => _CharacterInfoState();
}

class _CharacterInfoState extends State<CharacterInfo> {
  TextEditingController characterNameController = TextEditingController();
  TextEditingController playerNameController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white30,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Charaktername',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          color: Colors.teal.shade800,
          elevation: 8,
          shadowColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 500,
              child: TextFormField(
                maxLength: 30,
                controller: characterNameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hintText: 'Wie soll dein Spielcharakter heißen?',
                  //labelText: 'Charactername',
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 800,
          child: Divider(),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white30,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Spielername',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          color: Colors.teal.shade800,
          elevation: 8,
          shadowColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 500,
              child: TextFormField(
                maxLength: 30,
                controller: playerNameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hintText: 'Dein Name',
                  //labelText: 'Spielername',
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: isLoading
                  ? const SizedBox(
                      height: 30,
                      child: CircularProgressIndicator(),
                    )
                  : const Text(
                      'Download PDF',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
            ),
            onPressed: () async {
              if (characterNameController.text.isEmpty ||
                  playerNameController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "Bitte Charactername UND Spielernamen setzen.",
                    style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 30 : 18),
                  ),
                ));
                return;
              }
              setState(() {
                isLoading = true;
              });
              var font20 = PdfStandardFont(PdfFontFamily.helvetica, 20);
              var font14 = PdfStandardFont(PdfFontFamily.helvetica, 14);
              var font16 = PdfStandardFont(PdfFontFamily.helvetica, 16);
              var xfont = PdfStandardFont(PdfFontFamily.helvetica, 15);
              var myPdf = await rootBundle.load('assets/charactersheet.pdf');
              final PdfDocument document =
                  PdfDocument(inputBytes: myPdf.buffer.asUint8List());

              PdfForm form = document.form;
              /*for (int i = 0; i <= form.fields.count - 1; i++) {
                print('$i - ${form.fields[i].name}');
              }*/
              PdfTextBoxField characterName =
                  document.form.fields[3] as PdfTextBoxField;
              characterName.text = characterNameController.text;
              characterName.font = PdfStandardFont(PdfFontFamily.courier, 22);

              PdfTextBoxField playerName =
                  document.form.fields[2] as PdfTextBoxField;
              playerName.text = playerNameController.text;
              playerName.font = playerNameController.text.length > 12
                  ? PdfStandardFont(PdfFontFamily.helvetica, 11)
                  : font14;

              PdfTextBoxField str = document.form.fields[8] as PdfTextBoxField;
              str.text = CharacterSheet.boniValues[0] > 0
                  ? '+${CharacterSheet.boniValues[0]}'
                  : CharacterSheet.boniValues[0].toString();
              str.font = font20;

              PdfTextBoxField dex = document.form.fields[16] as PdfTextBoxField;
              dex.text = CharacterSheet.boniValues[1] > 0
                  ? '+${CharacterSheet.boniValues[1]}'
                  : CharacterSheet.boniValues[1].toString();
              dex.font = font20;

              PdfTextBoxField con = document.form.fields[22] as PdfTextBoxField;
              con.text = CharacterSheet.boniValues[2] > 0
                  ? '+${CharacterSheet.boniValues[2]}'
                  : CharacterSheet.boniValues[2].toString();
              con.font = font20;
              PdfTextBoxField inte =
                  document.form.fields[33] as PdfTextBoxField;
              inte.text = CharacterSheet.boniValues[3] > 0
                  ? '+${CharacterSheet.boniValues[3]}'
                  : CharacterSheet.boniValues[3].toString();
              inte.font = font20;

              PdfTextBoxField wis = document.form.fields[41] as PdfTextBoxField;
              wis.text = CharacterSheet.boniValues[4] > 0
                  ? '+${CharacterSheet.boniValues[4]}'
                  : CharacterSheet.boniValues[4].toString();
              wis.font = font20;

              PdfTextBoxField cha = document.form.fields[46] as PdfTextBoxField;
              cha.text = CharacterSheet.boniValues[5] > 0
                  ? '+${CharacterSheet.boniValues[5]}'
                  : CharacterSheet.boniValues[5].toString();
              cha.font = font20;

              PdfTextBoxField strMod =
                  document.form.fields[14] as PdfTextBoxField;
              strMod.text = CharacterSheet.attributes[0].toString();
              strMod.font = font14;

              PdfTextBoxField dexMod =
                  document.form.fields[19] as PdfTextBoxField;
              dexMod.text = CharacterSheet.attributes[1].toString();
              dexMod.font = font14;

              PdfTextBoxField conMod =
                  document.form.fields[27] as PdfTextBoxField;
              conMod.text = CharacterSheet.attributes[2].toString();
              conMod.font = font14;

              PdfTextBoxField intMod =
                  document.form.fields[37] as PdfTextBoxField;
              intMod.text = CharacterSheet.attributes[3].toString();
              intMod.font = font14;

              PdfTextBoxField wisMod =
                  document.form.fields[45] as PdfTextBoxField;
              wisMod.text = CharacterSheet.attributes[4].toString();
              wisMod.font = font14;

              PdfTextBoxField chaMod =
                  document.form.fields[47] as PdfTextBoxField;
              chaMod.text = CharacterSheet.attributes[5].toString();
              chaMod.font = font14;

              PdfTextBoxField gender =
                  document.form.fields[6] as PdfTextBoxField;
              gender.text = CharacterSheet.gender.toLowerCase().startsWith('m')
                  ? 'männlich'
                  : 'weiblich';
              gender.font = font14;

              PdfTextBoxField armorValue =
                  document.form.fields[10] as PdfTextBoxField;
              armorValue.text = (10 + CharacterSheet.boniValues[1]).toString();
              armorValue.font = font20;

              PdfTextBoxField race = document.form.fields[4] as PdfTextBoxField;
              race.text = CharacterSheet.race;
              race.font = font14;

              PdfTextBoxField classe =
                  document.form.fields[0] as PdfTextBoxField;
              classe.text = CharacterSheet.classe;
              classe.font = font16;

              PdfTextBoxField proficiencyBonus =
                  document.form.fields[7] as PdfTextBoxField;
              proficiencyBonus.text = '+2';
              proficiencyBonus.font = font16;

              var saveIds = [75, 77, 78, 79, 80, 81];
              var saveValues = [54, 57, 58, 60, 69, 70];
              var profsIdGrouped = [
                [76],
                [82, 83, 84],
                [],
                [85, 86, 87, 88, 89],
                [90, 91, 92, 93, 94],
                [95, 96, 97, 98]
              ];
              var profsValuesGrouped = [
                [53],
                [59, 55, 56],
                [],
                [61, 62, 63, 64, 65],
                [67, 100, 68, 99, 66],
                [71, 72, 73, 74]
              ];
              var modValues = [
                str.text,
                dex.text,
                con.text,
                inte.text,
                wis.text,
                cha.text
              ];
              for (int i = 0; i <= 5; i++) {
                var modval = int.parse(modValues[i]);
                int idx = 0;
                if (i != 2) {
                  // ignore: unused_local_variable
                  for (var x in profsIdGrouped[i]) {
                    if (CharacterSheet.saveIds.contains(i) ||
                        CharacterSheet.perks
                            .contains(profsValuesGrouped[i][idx])) {
                      PdfTextBoxField tmp = document.form
                          .fields[profsIdGrouped[i][idx]] as PdfTextBoxField;
                      tmp.text = 'x';
                      tmp.font = xfont;

                      PdfTextBoxField tmp2 =
                          document.form.fields[profsValuesGrouped[i][idx]]
                              as PdfTextBoxField;
                      tmp2.text =
                          (modval + 2) > 0 ? '+${modval + 2}' : '${modval + 2}';
                      tmp2.font = PdfStandardFont(PdfFontFamily.helvetica, 8);
                    } else {
                      PdfTextBoxField tmp3 =
                          document.form.fields[profsValuesGrouped[i][idx]]
                              as PdfTextBoxField;
                      String str = (modval) > 0 ? '+$modval' : '$modval';
                      if (modval == 0) {
                        str = '';
                      }
                      tmp3.text = str;
                      tmp3.font = PdfStandardFont(PdfFontFamily.helvetica, 8);
                    }

                    idx++;
                  }
                }
              }

              var cpy = [54, 57, 58, 60, 69, 70];

              for (int i = 0; i < CharacterSheet.saveIds.length; i++) {
                PdfTextBoxField tmp =
                    document.form.fields[saveIds[CharacterSheet.saveIds[i]]]
                        as PdfTextBoxField;
                tmp.text = 'x';
                tmp.font = xfont;

                PdfTextBoxField tmpVal =
                    document.form.fields[saveValues[CharacterSheet.saveIds[i]]]
                        as PdfTextBoxField;
                var calc = 2 + int.parse(modValues[CharacterSheet.saveIds[i]]);
                tmpVal.text = calc > 0 ? '+$calc' : '$calc';
                tmpVal.font = PdfStandardFont(PdfFontFamily.helvetica, 8);
                cpy[cpy.indexOf(saveValues[CharacterSheet.saveIds[i]])] = 999;
              }

              for (int i = 0; i <= 5; i++) {
                if (cpy[i] != 999) {
                  PdfTextBoxField tmp =
                      document.form.fields[cpy[i]] as PdfTextBoxField;
                  tmp.text = modValues[i] == '0' ? '' : modValues[i];
                  tmp.font = PdfStandardFont(PdfFontFamily.helvetica, 8);
                }
              }

              PdfTextBoxField hitDice =
                  document.form.fields[31] as PdfTextBoxField;
              hitDice.text = CharacterSheet.damageDice;
              hitDice.font = font16;

              PdfTextBoxField armor =
                  document.form.fields[21] as PdfTextBoxField;
              armor.text = CharacterSheet.armor;
              armor.font = PdfStandardFont(PdfFontFamily.helvetica, 12);

              PdfTextBoxField wpn = document.form.fields[32] as PdfTextBoxField;
              wpn.text = CharacterSheet.weapons;
              wpn.font = PdfStandardFont(PdfFontFamily.helvetica, 12);

              PdfTextBoxField racials =
                  document.form.fields[52] as PdfTextBoxField;
              racials.text = CharacterSheet.racials.join('\n');
              racials.font = font16;

              PdfTextBoxField skills =
                  document.form.fields[50] as PdfTextBoxField;
              skills.text = CharacterSheet.skills;
              skills.font = font16;

              if (getSkillNumberForClass(CharacterSheet.classe) > 0) {
                PdfTextBoxField spells =
                    document.form.fields[48] as PdfTextBoxField;
                spells.text = CharacterSheet.spells.join('\n');
                spells.font = font16;
              }

              form.flattenAllFields();
              String pdfName = characterNameController.text
                  .toLowerCase()
                  .replaceAll(' ', '');
              final bytes = await document.save();
              AnchorElement(
                  href:
                      "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}")
                ..setAttribute("download", "$pdfName.pdf")
                ..click();

              document.dispose();
              setState(() {
                isLoading = false;
              });
            },
          ),
        ),
      ],
    );
  }
}

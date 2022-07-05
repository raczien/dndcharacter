import 'dart:convert';
import 'dart:html';

import 'package:dndcharacter/charactersheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class CharacterInfo extends StatefulWidget {
  const CharacterInfo({Key? key}) : super(key: key);

  @override
  _CharacterInfoState createState() => _CharacterInfoState();
}

class _CharacterInfoState extends State<CharacterInfo> {
  TextEditingController characterNameController = TextEditingController();
  TextEditingController playerNameController = TextEditingController();

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
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Download PDF',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () async {
              var font20 = PdfStandardFont(PdfFontFamily.courier, 20);
              var font14 = PdfStandardFont(PdfFontFamily.courier, 14);

              var myPdf = await rootBundle.load('sheet.pdf');
              final PdfDocument document =
                  PdfDocument(inputBytes: myPdf.buffer.asUint8List());

              PdfForm form = document.form;
              for (int i = 0; i <= form.fields.count - 1; i++) {
                print('$i - ${form.fields[i].name}');
              }

              PdfTextBoxField characterName =
                  document.form.fields[3] as PdfTextBoxField;
              characterName.text = characterNameController.text;
              characterName.font = PdfStandardFont(PdfFontFamily.courier, 22);

              PdfTextBoxField playerName =
                  document.form.fields[2] as PdfTextBoxField;
              playerName.text = playerNameController.text;
              playerName.font = PdfStandardFont(PdfFontFamily.courier, 18);

              PdfTextBoxField str = document.form.fields[8] as PdfTextBoxField;
              str.text = CharacterSheet.boniValues[0].toString();
              str.font = font20;

              PdfTextBoxField dex = document.form.fields[16] as PdfTextBoxField;
              dex.text = CharacterSheet.boniValues[1].toString();
              dex.font = font20;

              PdfTextBoxField con = document.form.fields[22] as PdfTextBoxField;
              con.text = CharacterSheet.boniValues[2].toString();
              con.font = font20;

              PdfTextBoxField inte =
                  document.form.fields[33] as PdfTextBoxField;
              inte.text = CharacterSheet.boniValues[3].toString();
              inte.font = font20;

              PdfTextBoxField wis = document.form.fields[41] as PdfTextBoxField;
              wis.text = CharacterSheet.boniValues[4].toString();
              wis.font = font20;

              PdfTextBoxField cha = document.form.fields[46] as PdfTextBoxField;
              cha.text = CharacterSheet.boniValues[5].toString();
              cha.font = font20;

              PdfTextBoxField strMod =
                  document.form.fields[14] as PdfTextBoxField;
              strMod.text = CharacterSheet.attributes[0] > 0
                  ? '+${CharacterSheet.attributes[0]}'
                  : CharacterSheet.attributes[0].toString();
              strMod.font = font14;

              PdfTextBoxField dexMod =
                  document.form.fields[19] as PdfTextBoxField;
              dexMod.text = CharacterSheet.attributes[1] > 0
                  ? '+${CharacterSheet.attributes[1]}'
                  : CharacterSheet.attributes[1].toString();
              dexMod.font = font14;

              PdfTextBoxField conMod =
                  document.form.fields[27] as PdfTextBoxField;
              conMod.text = CharacterSheet.attributes[2] > 0
                  ? '+${CharacterSheet.attributes[2]}'
                  : CharacterSheet.attributes[2].toString();
              conMod.font = font14;

              PdfTextBoxField intMod =
                  document.form.fields[37] as PdfTextBoxField;
              intMod.text = CharacterSheet.attributes[3] > 0
                  ? '+${CharacterSheet.attributes[3]}'
                  : CharacterSheet.attributes[3].toString();
              intMod.font = font14;

              PdfTextBoxField wisMod =
                  document.form.fields[45] as PdfTextBoxField;
              wisMod.text = CharacterSheet.attributes[4] > 0
                  ? '+${CharacterSheet.attributes[4]}'
                  : CharacterSheet.attributes[4].toString();
              wisMod.font = font14;

              PdfTextBoxField chaMod =
                  document.form.fields[47] as PdfTextBoxField;
              chaMod.text = CharacterSheet.attributes[5] > 0
                  ? '+${CharacterSheet.attributes[5]}'
                  : CharacterSheet.attributes[5].toString();
              chaMod.font = font14;

              print('###### ALL FIELDS SET ######');

              form.flattenAllFields();

              final bytes = await document.save();
              //final blob = html.Blob([bytes], 'application/pdf');

              AnchorElement(
                  href:
                      "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}")
                ..setAttribute("download", "output.pdf")
                ..click();
              //File('output.pdf').writeAsBytesSync(await document.save());
              document.dispose();
            },
          ),
        ),
      ],
    );
  }
}

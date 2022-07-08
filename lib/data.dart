var races = [
  {
    'race': 'Argonier',
    'subraces': [
      {
        'name': 'Argonier',
        'male': 'assets/argonian/male.jpg',
        'female': 'assets/argonian/female.jpg',
        'size': '1,73 - 1,81 Meter',
        'weight': 'bis zu 105 KG',
        'maxAge': '~70 Jahre',
        'description':
            'Die Argonier sind echsenartige, jedoch humanoide Wesen. \nSie können unter Wasser atmen und sind immun gegen Krankheiten und viele Gifte.\nIm Wasser und unebenen Gebieten sind sie recht flink und sie sind Experten in Sachen Natur und Kräuter. \nSie werden allerdings von manch anderen Rassen wegen ihres Aussehens verachtet.',
        'racials': [
          '+Wasseratmung',
          '+Krankheitsimmunität',
          '+Giftresistenz',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 2, 0, 0, 1, 0],
      },
    ],
  },
  {
    'race': 'Elfen',
    'subraces': [
      {
        'name': 'Elf(e)',
        'male': 'assets/elves/male.jpg',
        'female': 'assets/elves/female.jpg',
        'size': '1,70 - 1,90 Meter',
        'weight': 'bis zu 42 KG',
        'maxAge': '~550 Jahre',
        'description':
            'Die Dunkel- Elfen lieben die Magie. Sie sind eine alte Rasse, die einen Großteil ihres langen Lebens der Studien widmen.\nJedoch gibt es unter ihnen auch einige Abenteurer die sich ganz auf Überlebens- und Kampfkunst fokussieren.\nManch andere Völker kommen wegen der oft vorkommenden Arroganz bei Elfen nicht mit ihnen klar.',
        'racials': [
          '+Dunkelsicht',
          '+Geschärfte Sinne',
          '+Fey Abstammung',
          '+Maske der Wildnis',
          '+Intelligenz',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 0, 1, 1, 0],
      },
      {
        'name': 'Dunkel- Elf(e)',
        'male': 'assets/elves/dark_male.jpg',
        'female': 'assets/elves/dark_female.jpg',
        'size': '1,75 - 1,90 Meter',
        'weight': 'bis zu 45 KG',
        'maxAge': '~500 Jahre',
        'description':
            'Die Dunkel- Elfen sind oftmals eher Alleingänger.\nSie sind Wanderer, Pilger und halten sich meist in Wäldern oder Bergen auf.\nSie hassen alle Arten von Monstern und Jagen diese häufig auch gegen Bezahlung.',
        'racials': [
          '+Dunkelsicht',
          '+Geschärfte Sinne',
          '+Fey Abstammung',
          '+Geschicklichkeit'
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [1, 1, 0, 0, 0, 0],
      },
    ],
  },
  {
    'race': 'Githyanki',
    'subraces': [
      {
        'name': 'Githyanki',
        'male': 'assets/githyanki/male.jpg',
        'female': 'assets/githyanki/female.jpg',
        'size': '1,7 - 2,1 Meter',
        'weight': 'bis zu 100 KG',
        'maxAge': '~95',
        'description':
            'Die Githyanki sind eine Rasse, die von den Illithids versklavt wurden.\nZwar sind sie nun frei, jedoch hat dies eine Narbe in Form von passiver Aggressivität und Arroganz hinterlassen.\nVertrauen tun sie meist nur ihren Artgenossen.',
        'racials': [
          '+Starker Geist',
          '+Sprachen',
          '+Einzelkämpfer',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 0, 2, 0, 1],
      },
    ],
  },
  {
    'race': 'Gnom',
    'subraces': [
      {
        'name': 'Gnome',
        'male': 'assets/gnome/male.jpg',
        'female': 'assets/gnome/female.jpg',
        'size': '1,0 - 1,1 Meter',
        'weight': 'bis zu 50 KG',
        'maxAge': '~200',
        'description':
            'Als kleinste Rasse sind sie auch flink und werden zunächst als ungefährlich und freundlich eingestuft.\nGnome sind im Allgemeinen auch allen Klassen gegenüber freundlich gesonnen.',
        'racials': [
          '+Glück',
          '+Verstohlen',
          '+Giftresstenz',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 1, 0, 0, 0, 1],
      },
    ],
  },
  {
    'race': 'Menschen',
    'subraces': [
      {
        'name': 'Mensch',
        'male': 'assets/humans/male.jpg',
        'female': 'assets/humans/female.jpg',
        'size': '1,60 - 1,90 Meter',
        'weight': 'bis zu 110 KG',
        'maxAge': '~80 Jahre',
        'description':
            'Die Menschen sind die anpassungsstärkste und ambitionierteste Rasse.\nDie haben eine kurze Lebensspanne und sind keine magischen Wesen, was sie aber durch ihre Willensstärke und Durchsetzungsfähigkeit keineswegs schwächer machen.\nMenschen sind meist Teamplayer, Abenteurer und ziehen alles durch, was sie angefangen haben.',
        'racials': [
          '+Sprachen',
          '+Ausdauernd',
          '+Stärke',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 1, 0, 0, 2],
      },
      {
        'name': 'Gesetzlose(r)',
        'male': 'assets/humans/outlaw_male.jpg',
        'female': 'assets/humans/outlaw_female.jpg',
        'size': '1,60 - 1,90 Meter',
        'weight': 'bis zu 110 KG',
        'maxAge': '~80 Jahre',
        'description':
            'Die Gesetzlosen brauchen keine Könige, Grafen oder andere Herrscher.\nSie sind nur sich selber treu und lassen sich von keiner höheren Autorität ihre hart verdienten (oder geklauten) Münzen durch Steuern wegnehmen.\nViele von ihnen sind oder waren schon einmal als Meuchelmörder oder Diebe tätig.',
        'racials': [
          '+Sprachen',
          '+Geschick',
          '+1 Auswahl',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 2, 0, 0, 1, 0],
      },
    ],
  },
  {
    'race': 'Ork',
    'subraces': [
      {
        'name': 'Ork',
        'male': 'assets/orc/male.jpg',
        'female': 'assets/orc/female.jpg',
        'size': '1,85 - 2,05 Meter',
        'weight': 'bis zu 130 KG',
        'maxAge': '~60 Jahre',
        'description':
            'Die Orks sind reine Krieger, die das Kämpfen lieben. \nSie sind sehr schmerzresistent und auch wenn sie viele für brutale Mörder halten eher auf ebenbürtige Kämpfe aus, anstatt sich an Hilflosen zu vergehen.\nStärke und Ausdauer prägen sie, als auch der Umgang mit Zweihandwaffen.',
        'racials': [
          '+Einschüchternd',
          '+Dunkelsicht',
          '+Extremer Wiederstand',
          '+Verherender Schlag',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [2, 0, 1, 0, 0, 0],
      },
    ],
  },
  {
    'race': 'Tiefling',
    'subraces': [
      {
        'name': 'Tiefling',
        'male': 'assets/tiefling/male.jpg',
        'female': 'assets/tiefling/female.jpg',
        'size': '1,78 - 2,05 Meter',
        'weight': 'bis zu 105 KG',
        'maxAge': '~100 Jahre',
        'description':
            'Tieflinge sind halb Mensch, halb Dämon. Sie sind nicht von Natur aus böse, jedoch werden sie wegen ihres aussehens und ihrer magischen Kräfte oft für böse gehalten.\nSie sind immun gegen viele statusverändernde Magie und können auf kurze Sicht im dunkeln sehen.',
        'racials': [
          '+Dunkelsicht',
          '+Feuerresistenz',
          '+Thaumaturgie',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 0, 0, 2, 1],
      },
    ],
  },
  {
    'race': 'Zwerge',
    'subraces': [
      {
        'name': 'Zwerg',
        'male': 'assets/dwarfs/male.jpg',
        'female': 'assets/dwarfs/female.jpg',
        'size': '1,0 - 1,2 Meter',
        'weight': 'bis zu 70 KG',
        'maxAge': '~250 Jahre',
        'description':
            'Zwerge sind kühn und robust. Sie sind als talentierte und furchtlose Krieger, exzellente Bergbauer, sowie für ihre Metallverarbeitung und Handwerkskunst bekannt.\nZwerge sind zwar nicht die schnellsten, besitzen dafür aber eine starke AUsdauer. Zwerge sind klug und haben ein großes Interesse an wirtschaftlichem Fortschritt.',
        'racials': [
          '+Wiederstand',
          '+Ausdauernd',
          '+Zwergische Zähigkeit',
          '+Schwere Rüstung',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 0, 1, 0, 1],
      },
      {
        'name': 'Berg- Zwerg',
        'male': 'assets/dwarfs/mountain_male.jpg',
        'female': 'assets/dwarfs/mountain_female.jpg',
        'size': '1,0 - 1,1 Meter',
        'weight': 'bis zu 68 KG',
        'maxAge': '~270 Jahre',
        'description':
            'Zwerge sind kühn und robust. Sie sind als talentierte und furchtlose Krieger, exzellente Bergbauer, sowie für ihre Metallverarbeitung und Handwerkskunst bekannt.\nAls ein Berg- Zwerg bist du stark und wiederstandsfähig. Raues Wetter, sowie Kälte und Nässe macht dir nichts aus. Berg-Zwerge sind zu dem extremst ausdauernd und haben ein sehr starkes Durchhaltevermögen.',
        'racials': [
          '+Dunkelsicht',
          '+Wiederstand',
          '+Leichte/Mittlere Rüstung',
          '+Handwerkskunst',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 1, 1, 0, 0],
      },
      {
        'name': 'Dunkel- Zwerg',
        'male': 'assets/dwarfs/dark_male.jpg',
        'female': 'assets/dwarfs/dark_female.jpg',
        'size': '1,0 - 1,2 Meter',
        'weight': 'bis zu 71 KG',
        'maxAge': '~300 Jahre',
        'description':
            'Zwerge sind kühn und robust. Sie sind als talentierte und furchtlose Krieger, exzellente Bergbauer, sowie für ihre Metallverarbeitung und Handwerkskunst bekannt.\nDunkel- Zwerge haben geschärfte Sinne, starke Intuition und die größte Wiedderstandskraft von allen Zwergen - eine wahre Kämpfernatur.',
        'racials': [
          '+Dunkelsicht',
          '+Unbeugsamkeit',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 3, 0, 0, 0],
      },
    ],
  },
];

var skills = [
  {
    'id': 1,
    'name': 'Kampfeszorn',
    'descr':
        'Im Kampf als Bonusaktion nutzbar.\nWährend Kampfeszorn aktiv ist (und du keine schwere Rüstung trägst) bekommst du folgende Vorteile:\n   - Vorteil auf Stärkewürfe\n   - Bonus bei Angriff mit einer STR Nahkampfwaffe\nFalls du ein Zauberwirker bist, kannst du sie nicht wirken, solange Kampfeszorn aktiv ist.\nErst nach einer lagen Rast erneut nutzbar.',
  },
  {
    'id': 2,
    'name': 'Zauber wirken',
    'descr':
        'Ein ^^KLASSE^^ kann Zauber wirken. Zauber sind Klassenspezifisch und als ^^KLASSE^^ kannst du dir ^^NUM^^ aussuchen.',
  },
  {
    'id': 3,
    'name': 'Bardische Inspiration',
    'descr':
        'Diese Fähigkeit lässt dich einen Mitspieler innerhalb 20 Metern inspirieren. \nDie inspirierten Spieler bekommen einen W6, welchen sie einsetzen können, um einen Fertigkeitscheck oder Rettungswurf zu verbessern.\nDu kannst diese Fähigkeit gleich deines Charisma MOD`s einsetzen, die nach einer langen Rast aufgefüllt werden.',
  },
  {
    'id': 4,
    'name': 'Druidisch',
    'descr':
        'Du kennst die geheime Sprache der Druiden und kannst diese einsetzen um geheime Botschaften zu verstecken.\nDu und andere Druiden erkennen diese sofort. Andere können diese Nachrichten nur mit +15 Wahrnehmungswurf erkennen und dechiffrieren.',
  },
  {
    'id': 5,
    'name': 'Kampfstil',
    'descr':
        'Du kannst einen Kampfstil auswählen. Diesen musst du fortan behalten.\n',
  },
  {
    'id': 6,
    'name': 'Zweiter Wind',
    'descr':
        'Du erhälst die Fähigkeit, dich mit einem W10 einmal zu heilen.Um die Fähigkeit erneut zu nutzen, musst du eine kurze Pause einlegen.',
  },
  {
    'id': 7,
    'name': 'Aufspüren',
    'descr':
        'Wenn du versuchst Fußspuren oder Ähnliches aufzuspüren, würfelst du mit Vorteil.',
  },
  {
    'id': 8,
    'name': 'Natürlicher Experte',
    'descr':
        'Du kannst dir ein Terrain aussuchen indem du Experte bist. \nWenn du dich in diesem Terrain befindest, ist dein Bonus auf Intelligenz und Charisma Boni versoppelt.',
  },
  {
    'id': 9,
    'name': 'Göttliche Hand',
    'descr':
        'Wenn du durch ein Monster einen Finalen Schlag erleidest, beschützt dich deine göttliche Gabe einmalig und negiert den Schaden.',
  },
  {
    'id': 10,
    'name': 'Waffenlose Kampfkunst',
    'descr':
        'Als Bonusaktion kannst du waffenlos angreifen und Schaden in Höhe eines w4 erwürfeln.',
  },
  {
    'id': 11,
    'name': 'Handauflegen',
    'descr':
        'Du kannst einen Humanoiden heilen (Charisma MOD * 5). \nAuch kannst du mit dieser Fähigkeit Krankheiten und Gifte heilen (auch mehrere mit EINEM Nutzen), indem du 5 deiner HP opferst.\nDiese Fähigkeit hat 2 Aufladungen und kann mit einer Langen Rast aufgefüllt werden.',
  },
  {
    'id': 12,
    'name': 'Göttliche Sinne',
    'descr':
        'Du kannst starke teuflische Gegner innerhalb 60 Meter wahrnehmen. Diese Fähigkeit geht nicht durch Wände.\nAufladungen: 1 + Cha MOD, die nach langer Rast wieder aufgeladen sind.',
  },
  {
    'id': 13,
    'name': 'Expertise',
    'descr':
        'Wähle eine Fertigkeit, in der du geübt bist. Verdoppel diese Boni dauerhaft für die Fertigkeitschecks.',
  },
  {
    'id': 14,
    'name': 'Überraschungsangriff',
    'descr':
        'Wenn du mit Vorteil angreifst, würfel einen w6 und richte dementsprechend Bonusschaden an.',
  },
  {
    'id': 15,
    'name': 'Ausweichrolle',
    'descr':
        'Du kannst eine Ausweichrolle ausführen, mit der du magische und physischen Attacken ausweichen kannst.',
  },
];

int getSkillNumberForClass(String name) {
  switch (name) {
    case 'Barde':
      return 2;
    case 'Magier':
      return 3;
    case 'Druide':
      return 4;
    case 'Zauberer':
      return 3;
    case 'Hexenmeister':
      return 2;
    case 'Kleriker':
      return 3;
    default:
      return 0;
  }
}

var classes = [
  {
    'name': 'Barbar',
    'image': 'assets/classes/barbar.jpeg',
    'description':
        'Ein furchtloser Krieger mit primitiver Herkunft, der eine Kampfeszorn- Fähigkeit besitzt.',
    'dmgdice': 'w12',
    'primaryStat': 'Stärke',
    'save': 'Stärke & Konstitution',
    'saveIds': [0, 2],
    'armor': 'Leichte, Mittlere, Schilde',
    'weapons': 'Zweihandaxt oder zwei Einhandäxte',
    'skills': [71, 66, 100],
    'skillNum': 3,
    'useables': [1],
  },
  {
    'name': 'Barde',
    'image': 'assets/classes/barde.jpeg',
    'description':
        'Ein inspirierender Magier, dessen Kraft die Musik der Schöpfung widerspiegelt.',
    'dmgdice': 'w8',
    'primaryStat': 'Charisma',
    'save': 'Charisma & Geschicklichkeit',
    'saveIds': [1, 5],
    'armor': 'Leichte',
    'weapons': 'Einhandwaffen',
    'skills': [], // any 3
    'skillNum': 3,
    'useables': [2, 3],
  },
  {
    'name': 'Druide',
    'image': 'assets/classes/druide.jpeg',
    'description':
        'Ein Priester des alten Glaubens, der die Kräfte der Natur beherrscht und Tiergestalt annehmen kann.',
    'dmgdice': 'w8',
    'primaryStat': 'Weisheit',
    'save': 'Intelligenz & Weisheit',
    'saveIds': [3, 4],
    'armor': 'Leichte und Mittlere',
    'weapons': 'Keulen, Dolche, Speere, Stäbe',
    'skills': [67, 64, 68],
    'skillNum': 4,
    'useables': [2, 4],
  },
  {
    'name': 'Gladiator',
    'image': 'assets/classes/gladiator.jpeg',
    'description':
        'Meister der Kampfkunst, der sich auf den Einzelkampf spiezialisiert hat und mit vielen verschiedenen Waffen umgehen kann.',
    'dmgdice': 'w10',
    'primaryStat': 'Stärke',
    'save': 'Stärke & Konstitution',
    'saveIds': [0, 2],
    'armor': 'Alle, Schilde (optional)',
    'weapons': 'Alle normale Nahkampfwaffen',
    'skills': [66, 59, 71],
    'skillNum': 3,
    'useables': [5, 6],
  },
  {
    'name': 'Hexenmeister',
    'image': 'assets/classes/hexenmeister.jpeg',
    'description':
        'Ein Nutzer von Magie, die er aus einem Handel mit finsteren Gestalten bekommt, die nicht von dieser Welt sind.',
    'dmgdice': 'w8',
    'primaryStat': 'Charisma',
    'save': 'Weisheit & Charisma',
    'saveIds': [4, 5],
    'armor': 'Leichte',
    'weapons': 'Magische Waffen, wie Stäbe, Keulen, Bücher',
    'skills': [61, 63, 74],
    'skillNum': 3,
    'useables': [2],
  },
  {
    'name': 'Jäger',
    'image': 'assets/classes/Jäger.jpeg',
    'description':
        'Rubuste Krieger - Exerte in Fährtenlesen, Fallen, Wäldern und Tieren.',
    'dmgdice': 'w10',
    'primaryStat': 'Geschicklichkeit & Weisheit',
    'save': 'Stärke & Geschicklichkeit',
    'saveIds': [0, 1],
    'armor': 'Leichte, Mittlere',
    'weapons': 'Bögen oder Armbrüste und Einhandwaffe',
    'skills': [67, 59, 63, 100],
    'skillNum': 4,
    'useables': [7, 8],
  },
  {
    'name': 'Kleriker',
    'image': 'assets/classes/kleriker.jpeg',
    'description':
        'Ein priesterlicher Champion, der göttliche Magie im Dienste einer höheren Macht einsetzt',
    'dmgdice': 'w8',
    'primaryStat': 'Weisheit',
    'save': 'Weisheit & Charisma',
    'saveIds': [4, 5],
    'armor': 'Leichte, Mittlere, Schild',
    'weapons': 'Einfache Einhandwaffen',
    'skills': [62, 68, 74, 99],
    'skillNum': 4,
    'useables': [2, 9],
  },
  {
    'name': 'Magier',
    'image': 'assets/classes/magier.jpeg',
    'description':
        'Ein Weiser und Gelehrter Magier, der die Fähigkeit besitzt die Struktur der Realität zu verändern.',
    'dmgdice': 'w6',
    'primaryStat': 'Intelligenz',
    'save': 'Intelligenz & Weisheit',
    'saveIds': [3, 4],
    'armor': 'Keine',
    'weapons': 'Dolche, Stäbe',
    'skills': [61, 63, 100, 62],
    'skillNum': 4,
    'useables': [2],
  },
  {
    'name': 'Mönch',
    'image': 'assets/classes/mönch.jpeg',
    'description':
        'Ein Meister der Kampfkunst, der Körper und Geist gleichermaßen stählt. ',
    'dmgdice': 'w8',
    'primaryStat': 'Geschicklichkeit & Weisheit',
    'saveIds': [1, 4],
    'save': 'Stärke & Geschicklichkeit',
    'armor': 'Leichte',
    'weapons': 'Einfache Nahkampfwaffen, Faustwaffen',
    'skills': [59, 53, 65],
    'skillNum': 4,
    'useables': [10, 15],
  },
  {
    'name': 'Paladin',
    'image': 'assets/classes/paladin.jpeg',
    'description':
        'Ein heiliger Krieger, der an einen heiligen Eid gebunden ist.',
    'dmgdice': 'w10',
    'primaryStat': 'Stärke & Charisma',
    'save': 'Weisheit & Charisma',
    'saveIds': [4, 5],
    'armor': 'Schwere, Schilde',
    'weapons': 'Einhandwaffen',
    'skills': [74, 73, 65],
    'skillNum': 3,
    'useables': [11, 12],
  },
  {
    'name': 'Schurke',
    'image': 'assets/classes/schurke.jpeg',
    'description':
        'Ein Schurke, der Verstohlenheit und Tricks einsetzt, um Hindernisse und Feinde zu überwinden',
    'dmgdice': 'w8',
    'primaryStat': 'Geschicklichkeit',
    'save': 'Geschicklichkeit & Intelligenz',
    'saveIds': [1, 3],
    'armor': 'Leichte',
    'weapons': 'Zwei Einhandwaffen',
    'skills': [72, 56, 100, 55],
    'skillNum': 4,
    'useables': [13, 14],
  },
  {
    'name': 'Zauberer',
    'image': 'assets/classes/zauberer.jpeg',
    'description':
        'Ein Zauberwirker, der seine Magie durch eine Gabe oder aus seiner Vererbung bekam.',
    'dmgdice': 'w6',
    'primaryStat': 'Charisma',
    'save': 'Charisma & Konstitution',
    'saveIds': [2, 5],
    'armor': 'Keine',
    'weapons': 'Dolch, Stäbe',
    'skills': [61, 73, 63],
    'skillNum': 3,
    'useables': [2],
  },
];

List<int> allSkills = [
  59,
  61,
  53,
  73,
  71,
  55,
  62,
  68,
  56,
  67,
  99,
  63,
  64,
  65,
  72,
  66,
  74,
  100
];

int getSkillId(String name) {
  switch (name) {
    case 'Akrobatik (Ges)':
      return 59;
    case 'ArkaneKunde (Int)':
      return 61;
    case 'Athletik (Str)':
      return 53;
    case 'Auftreten (Cha)':
      return 73;
    case 'Einschüchtern (Cha)':
      return 71;
    case 'Fingerfertigkeit (Ges)':
      return 55;
    case 'Geschichte (Int)':
      return 62;
    case 'Heilkunde (Wei)':
      return 68;
    case 'Heimlichkeit (Ges)':
      return 56;
    case 'MitTierenUmgehen (Wei)':
      return 67;
    case 'MotivErkennen (Wei)':
      return 99;
    case 'Nachforschungen (Int)':
      return 63;
    case 'Naturkunde (Int)':
      return 64;
    case 'Religion (Int)':
      return 65;
    case 'Täuschen (Cha)':
      return 72;
    case 'Überlebenskunst (Wei)':
      return 66;
    case 'Überzeugen (Cha)':
      return 74;
    case 'Wahrnehmung (Wei)':
      return 100;
    default:
      return 0;
  }
}

String getSkillName(int i) {
  switch (i) {
    case 59:
      return 'Akrobatik (Ges)';
    case 61:
      return 'ArkaneKunde (Int)';
    case 53:
      return 'Athletik (Str)';
    case 73:
      return 'Auftreten (Cha)';
    case 71:
      return 'Einschüchtern (Cha)';
    case 55:
      return 'Fingerfertigkeit (Ges)';
    case 62:
      return 'Geschichte (Int)';
    case 68:
      return 'Heilkunde (Wei)';
    case 56:
      return 'Heimlichkeit (Ges)';
    case 67:
      return 'MitTierenUmgehen (Wei)';
    case 99:
      return 'MotivErkennen (Wei)';
    case 63:
      return 'Nachforschungen (Int)';
    case 64:
      return 'Naturkunde (Int)';
    case 65:
      return 'Religion (Int)';
    case 72:
      return 'Täuschen (Cha)';
    case 66:
      return 'Überlebenskunst (Wei)';
    case 74:
      return 'Überzeugen (Cha)';
    case 100:
      return 'Wahrnehmung (Wei)';
    default:
      return 'notfound';
  }
}

// TODO: NOTE: Alle bekommen ne Waffe von mir UND Magieklassen bekommen einen Standartzauber
var bardSpells = [
  {
    'name': 'Fluch',
    'description':
        '3 Kreaturen deiner Wahl in Reichweitemüssen vor de nächsten Angriff einen Charisma Rettungswurf ablegen.\nWenn der Rettungswurf misslingt, wird ein W4 gewürfelt und der Schaden, den die Kreatur verursacht wird um den erwürfelten Wert verringert.',
    'range': '10 m',
    'duration': '1 Min',
  },
  {
    'name': 'Charm',
    'description':
        'Du versuchst einen humanoiden zu bezaubern. Das Ziel muss einen Weisheits Rettungswurf machen.\nWenn dieser fehlschlägt ist das Ziel bezaubert und kann den Caster nicht Angreifen.\nAußerdem hat der Zaubernde immer Vorteil bei Würfen, wenn es um die Zielperson geht.\nWenn der Effekt endet, weiß die Person von der Bezauberung.',
    'range': '10 m',
    'duration': '1 Std',
  },
  {
    'name': 'Wunden heilen',
    'description':
        'Eine Kreatur, die du berührst, regeneriert eine gewisse Anzahl an HP, die der SL festlegt.',
    'range': 'Berührung',
    'duration': 'Sofort',
  },
  {
    'name': 'Federfall',
    'description':
        'Belege bis zu 5 Verbündete mit dem Zauber Federfall.\nFederfall negiert Fallschaden für ca. 20 Meter Fall.',
    'range': '20 m',
    'duration': '1 Min',
  },
  {
    'name': 'Heilender Gesang',
    'description':
        'Alle sich im Kampf befindenden Freunde werden um einen W4 wurf geheilt.',
    'range': '15 m',
    'duration': 'Sofort',
  },
];
var druidSpells = [
  {
    'name': 'Tier Freundschaft',
    'description':
        'Dieser Zauber lässt dich ein Tier überzeugen, dass du ihm nichts böses willst. Eveltuell hilft es dir sogar.\nUm den Zauber wirken zu können, muss sich das Tier in Sicht- und Hörweite befinden.',
    'range': '12 m',
    'duration': '6 Std',
  },
  {
    'name': 'Wunden heilen',
    'description':
        'Eine Kreatur, die du berührst, regeneriert eine gewisse Anzahl an HP, die der SL festlegt.',
    'range': 'Berührung',
    'duration': 'Sofort',
  },
  {
    'name': 'Tierbund',
    'description':
        'Dieser Zauberlässt bindet dich für 3 Minuten an ein Tier durch Telepatie. Dieses Tier kann in der Zeit Befehle von dir ausführen.',
    'range': 'Berührung',
    'duration': '3 Min',
  },
  {
    'name': 'Sprung',
    'description':
        'Berühre eine Person um einmalig ihre Sprungdistanz zu verdoppeln.',
    'range': 'Berührung',
    'duration': '1 Aufladung',
  },
  {
    'name': 'Essen Reinigen',
    'description':
        'Essen in einem 1 Meter Radius wird von allen Giften und Krankheiten befreit.',
    'range': '2 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Schlafen',
    'description':
        'Würfel einen W4 um diese Anzahl an Gegnern (von schwach nach stark aufsteigend) schlafen zu lassen.\nAufwachen tun die Ziele erst durch das Erleiden von Schaden, oder durch die Hilfe einer Kreatur (Ohrfeige, Gegenzauber..)',
    'range': '25 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Nebelwand',
    'description':
        'Ein dichter Nebel bildet sich an der gewünschten Stelle in einem 5 Meter Radius.',
    'range': '40 m',
    'duration': '30 Min',
  }
];
var mageSpells = [
  {
    'name': 'Sprache verstehen',
    'description':
        'Für die Dauer dieses Zaubers kannst du den Inhalt gesprochener Worte verstehen. Auch Texte kannst du entziffern, wenn du sie dabei berührst.',
    'range': 'Sich selbst',
    'duration': '1 Std',
  },
  {
    'name': 'Alarm',
    'description':
        'Belege eine Stelle deiner Wahl mit Magie. Sobald eine Kreatur diese Stelle passiert, weißt du automatisch bescheid.',
    'range': '5 m',
    'duration': '8 Std',
  },
  {
    'name': 'Magie aufspüren',
    'description':
        'Spüre Fallen oder Zauber Magischer Natur innerhalb eines 10 Meter Radius auf.',
    'range': '10 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Eismesser',
    'description':
        'Du beschwörst einen Eis- Dolch, den du auf einen Gegner schleuderst.\nDas Messer richtet einen w10 Schaden an und explodiert dann in Splitter, die allen gegnern in einem 5m Radius w6 Schaden verursachen.',
    'range': '25 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Magische Geschosse',
    'description':
        'Du erschaffst 2 Magische Lanzen, die du auf Gegner deiner Wahl schießt.\nJede getroffene Lanze macht W10 +2 Schaden.',
    'range': '25 m',
    'duration': 'Sofort',
  },
];
var warlockSpells = [
  {
    'name': 'Sprache verstehen',
    'description':
        'Für die Dauer dieses Zaubers kannst du den Inhalt gesprochener Worte verstehen. Auch Texte kannst du entziffern, wenn du sie dabei berührst.',
    'range': 'Sich selbst',
    'duration': '1 Std',
  },
  {
    'name': 'Höllischer Tadel',
    'description':
        'Wenn ein gegner dir Schaden zufügt, mache einen Geschicklichkeitswurf. \nIst er Laut SL erfolgreich, beschwörst du bestrafende Flammen, die dem gegner 2xW10 Schaden zu.',
    'range': '25 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Imp',
    'description':
        'Beschwöre einen Kleinen Imp, der mit dir kämpft. Sein Leben und Schaden entscheidet der SL.',
    'range': '1 m',
    'duration': '6 Std',
  },
  {
    'name': 'Lebensraub',
    'description': 'Du kannst Gegnern einen W8 an Lebenspunkten klauen.',
    'range': '20 m',
    'duration': 'Sofort',
  },
];
var wizardSpells = [
  {
    'name': 'Sprache verstehen',
    'description':
        'Für die Dauer dieses Zaubers kannst du den Inhalt gesprochener Worte verstehen. Auch Texte kannst du entziffern, wenn du sie dabei berührst.',
    'range': 'Sich selbst',
    'duration': '1 Std',
  },
  {
    'name': 'Brennende Hände',
    'description':
        'Du hälst deine Daumen aneinander und Streckst die restlichen Finger Richtung Feinde. Du richtest für jeden Finger einem Feind (Je ein W4 Wurf) schafen zu.',
    'range': '20 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Donnerwelle',
    'description':
        'Eine donnernde Macht rast auf die Gegner vor dir zu. Diese müssen einen Konstitutions Rettungswurf machen.\nGelingt dieser nicht bekommen alle Gegner W10 Schaden und werden etwas zurückgeschleudert.\nGelingt dieser bekommen sie nur halben Schaden und werden nicht weggeschleudert.',
    'range': '20 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Magisches Schild',
    'description': 'Für eine Runde bekommst du +5 Rüstung.',
    'range': 'Sich selbst',
    'duration': 'Sofort',
  },
];
var clericSpells = [
  {
    'name': 'Wunden heilen',
    'description':
        'Eine Kreatur, die du berührst, regeneriert eine gewisse Anzahl an HP, die der SL festlegt.',
    'range': 'Berührung',
    'duration': 'Sofort',
  },
  {
    'name': 'Heilender Segen',
    'description':
        'Alle sich im Kampf befindenden Freunde werden um einen W4 wurf geheilt.',
    'range': '15 m',
    'duration': 'Sofort',
  },
  {
    'name': 'Heroismus',
    'description':
        'Berühre einen Verbündeten Um ihn immun gegen \"Verängstigen\" zu machen und ihm 1 W10 Wurf temporäre HP zu geben.',
    'range': 'Berührung',
    'duration': '3 Min',
  },
  {
    'name': 'Wegweiser',
    'description':
        'Du kannst nach Absprache eine Person mit einem Zauber belegen. Das Ziel kann dann auf einen Fertigkeitscheck einen W4 addieren.\nDannach löst sich der Zauber auf.',
    'range': 'Berührung',
    'duration': '1 Aktion',
  },
];

List<Map<String, Object>> getSkills(String classe) {
  switch (classe) {
    case "Barde":
      return bardSpells;
    case "Druide":
      return druidSpells;
    case "Hexenmeister":
      return warlockSpells;
    case "Kleriker":
      return clericSpells;
    case "Magier":
      return mageSpells;
    case "Zauberer":
      return wizardSpells;
    default:
      return [];
  }
}

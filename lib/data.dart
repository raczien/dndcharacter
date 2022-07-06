var races = [
  {
    'race': 'Argonier',
    'subraces': [
      {
        'name': 'Argonier',
        'male': 'assets/argonian/male.jpg',
        'female': 'assets/argonian/female.jpg',
        'size': '1,73 - 1,81 Meter',
        'weight': 'bis zu 85 KG',
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
        'boni': [0, 0, 0, 1, 0, 0],
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
        'boni': [0, 1, 0, 0, 0, 0],
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
        'boni': [1, 0, 1, 0, 0, 1],
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
          '+Gechick',
          '+1 Feat',
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
        'boni': [1, 0, 1, 0, 0, 0],
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
            'Tieflinge sind halb Mensch, halb Dämon. Sie sind nicht von Natur aus böse, jedoch werden sie wegen ihres aussehens und ihrer magischen Kräfte oft für böse gehalten.\nSie sind immun gegen viele statusverändernde Magie und können auf kurze Sicht im dunkeln sehen. Sie sind extrem Stark, haben aber dafür nicht so starke Ausdauer.',
        'racials': [
          '+Dunkelsicht',
          '+Feuerresistenz',
          '+Thaumaturgie',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 0, 0, 1, 0, 1],
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
        'boni': [0, 0, 0, 1, 1, 0],
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

// TODO: Skills Liste und dazu Klassen Feld (Array)
// Attribute modificator = (Wert - 10) / 2
// Attributes = [15, 14, 13, 12, 10, 8]
// Armor = 10 + Geschickmod
// Tools und Waffen gebe ich aus
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
  },
  {
    'name': 'Hexenmeister',
    'image': 'assets/classes/hexenmeister.jpeg',
    'description':
        'Ein Nutzer von Magie, die er aus einem Handel mit finsteren Gestalten bekommt, die nicht von dieser Welt sind.',
    'dmgdice': 'd8',
    'primaryStat': 'Charisma',
    'save': 'Weisheit & Charisma',
    'saveIds': [4, 5],
    'armor': 'Leichte',
    'weapons': 'Magische Waffen, wie Stäbe, Keulen, Bücher',
    'skills': [61, 63, 74],
    'skillNum': 3,
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
  },
  {
    'name': 'Magier',
    'image': 'assets/classes/magier.jpeg',
    'description':
        'Ein Weiser und Gelehrter Magier, der die Fähigkeit besitzt die Struktur der Realität zu verändern.',
    'dmgdice': 'd6',
    'primaryStat': 'Intelligenz',
    'save': 'Intelligenz & Weisheit',
    'saveIds': [3, 4],
    'armor': 'Keine',
    'weapons': 'Dolche, Stäbe',
    'skills': [61, 63, 100, 62],
    'skillNum': 4,
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
  },
  {
    'name': 'Schurke',
    'image': 'assets/classes/schurke.jpeg',
    'description':
        'Ein Schurke, der Verstohlenheit und Tricks einsetzt, um Hindernisse und Feinde zu überwinden',
    'dmgdice': 'd8',
    'primaryStat': 'Geschicklichkeit',
    'save': 'Geschicklichkeit & Intelligenz',
    'saveIds': [1, 3],
    'armor': 'Leichte',
    'weapons': 'Zwei Einhandwaffen',
    'skills': [72, 56, 100, 55],
    'skillNum': 4,
  },
  {
    'name': 'Zauberer',
    'image': 'assets/classes/zauberer.jpeg',
    'description':
        'Ein Zauberwirker, der seine Magie durch eine Gabe oder aus seiner Vererbung bekam.',
    'dmgdice': 'd6',
    'primaryStat': 'Charisma',
    'save': 'Charisma & Konstitution',
    'saveIds': [2, 5],
    'armor': 'Keine',
    'weapons': 'Dolch, Stäbe',
    'skills': [61, 73, 63],
    'skillNum': 3,
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

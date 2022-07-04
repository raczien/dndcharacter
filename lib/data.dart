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
            'Die Argonier sind echsenartige, jedoch humanoide Wesen. Sie können unter Wasser atmen und sind immun gegen Krankheiten und viele Gifte.\nSie sind flink im Wasser und unebenen Gebieten und Experten in Sachen Natur und Kräuter. Sie sind schlau und flink, werden alelrdings von manch anderen Rassen wegen ihres aussehens verachtet.',
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
        'description': 'Rasse der Elfen',
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
        'description': 'Rasse der Dunkel- Elfen',
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
            'Als kleinste Rasse sind sie auch flink und werden zunächst als ungefährlich und freundlich eingestuft.',
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
            'Die Menschen sind die anpassungsstärkste und ambitionierteste Rasse. Die haben eine kleinere Lebensspanne und sind keine magischen Wesen, was sie aber durch ihre Willensstärke und Durchsetzungsfähigkeit keineswegs schwächer machen.\nMenschen sind meist Teamplayer, Abenteurer und ziehen alles durch, was sie angefangen haben.',
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
        'description': '',
        'racials': [
          '+Sprachen',
          '+Gechick',
          '+1 Feat',
        ], // Str, Ges, Kon, Int, Wei, Cha
        'boni': [0, 2, 0, 0, 0, 0],
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
            'Die Orks sind reine Krieger, die das Kämpfen lieben. Sie sind sehr schmerzresistent und auch wenn sie viele für brutale Mörder halten eher auf ebenbürtige Kämpfe aus, anstatt sich an Hilflosen zu vergehen.\nStärke und ausdauer prägen sie, als auch der Umgang mit Zweihandwaffen.',
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
    'armor': 'Leichte, Mittlere, Schilde',
    'weapons': 'Zweihandaxt oder zwei Einhandäxte',
    'skills': [31, 42, 44],
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
    'armor': 'Leichte und Mittlere',
    'weapons': 'Keulen, Dolche, Speere, Stäbe',
    'skills': [36, 39, 34],
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
    'armor': 'Alle, Schilde (optional)',
    'weapons': 'Alle normale Nahkampfwaffen',
    'skills': [42, 27, 31],
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
    'armor': 'Leichte',
    'weapons': 'Magische Waffen, wie Stäbe, Keulen, Bücher',
    'skills': [28, 38, 43],
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
    'armor': 'Leichte, Mittlere',
    'weapons': 'Bögen oder Armbrüste und Einhandwaffe',
    'skills': [36, 27, 38, 44],
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
    'armor': 'Leichte, Mittlere, Schild',
    'weapons': 'Einfache Einhandwaffen',
    'skills': [33, 34, 43, 37],
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
    'armor': 'Keine',
    'weapons': 'Dolche, Stäbe',
    'skills': [28, 38, 44, 33],
    'skillNum': 4,
  },
  {
    'name': 'Mönch',
    'image': 'assets/classes/mönch.jpeg',
    'description':
        'Ein Meister der Kampfkunst, der Körper und Geist gleichermaßen stählt. ',
    'dmgdice': 'w8',
    'primaryStat': 'Geschicklichkeit & Weisheit',
    'save': 'Stärke & Geschicklichkeit',
    'armor': 'Leichte',
    'weapons': 'Einfache Nahkampfwaffen, Faustwaffen',
    'skills': [27, 29, 40],
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
    'armor': 'Schwere, Schilde',
    'weapons': 'Einhandwaffen',
    'skills': [43, 30, 40],
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
    'armor': 'Leichte',
    'weapons': 'Zwei Einhandwaffen',
    'skills': [41, 35, 44, 32],
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
    'armor': 'Keine',
    'weapons': 'Dolch, Stäbe',
    'skills': [28, 30, 38],
    'skillNum': 3,
  },
];

List<int> allSkills = [
  27,
  28,
  29,
  30,
  31,
  32,
  33,
  34,
  35,
  36,
  37,
  38,
  39,
  40,
  41,
  42,
  43,
  44
];

int getSkillId(String name) {
  switch (name) {
    case 'Akrobatik (Ges)':
      return 27;
    case 'ArkaneKunde (Int)':
      return 28;
    case 'Athletik (Str)':
      return 29;
    case 'Auftreten (Cha)':
      return 30;
    case 'Einschüchtern (Cha)':
      return 31;
    case 'Fingerfertigkeit (Ges)':
      return 32;
    case 'Geschichte (Int)':
      return 33;
    case 'Heilkunde (Wei)':
      return 34;
    case 'Heimlichkeit (Ges)':
      return 35;
    case 'MitTierenUmgehen (Wei)':
      return 36;
    case 'MotivErkennen (Wei)':
      return 37;
    case 'Nachforschungen (Int)':
      return 38;
    case 'Naturkunde (Int)':
      return 39;
    case 'Religion (Int)':
      return 40;
    case 'Täuschen (Cha)':
      return 41;
    case 'Überlebenskunst (Wei)':
      return 42;
    case 'Überzeugen (Cha)':
      return 43;
    case 'Wahrnehmung (Wei)':
      return 44;
    default:
      return 0;
  }
}

String getSkillName(int i) {
  switch (i) {
    case 27:
      return 'Akrobatik (Ges)';
    case 28:
      return 'ArkaneKunde (Int)';
    case 29:
      return 'Athletik (Str)';
    case 30:
      return 'Auftreten (Cha)';
    case 31:
      return 'Einschüchtern (Cha)';
    case 32:
      return 'Fingerfertigkeit (Ges)';
    case 33:
      return 'Geschichte (Int)';
    case 34:
      return 'Heilkunde (Wei)';
    case 35:
      return 'Heimlichkeit (Ges)';
    case 36:
      return 'MitTierenUmgehen (Wei)';
    case 37:
      return 'MotivErkennen (Wei)';
    case 38:
      return 'Nachforschungen (Int)';
    case 39:
      return 'Naturkunde (Int)';
    case 40:
      return 'Religion (Int)';
    case 41:
      return 'Täuschen (Cha)';
    case 42:
      return 'Überlebenskunst (Wei)';
    case 43:
      return 'Überzeugen (Cha)';
    case 44:
      return 'Wahrnehmung (Wei)';
    default:
      return 'notfound';
  }
}

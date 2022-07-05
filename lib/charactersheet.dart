class CharacterSheet {
  static String race = '';
  static String gender = '';
  static List<String> racials = [];
  static List<int> boni = [];
  static String damageDice = '';
  static String primaryStats = '';
  static String saveStats = '';
  static String armor = ''; // .contains Leichte / Mittlere / Schwere / Schild
  static String weapons = '';
  static List<int> perks = [];
  static List<int> boniValues = [];
  static List<int> attributes = [];

  static String toStr() {
    return 'CharacterSheet{'
        'race: $race, '
        'gender: $gender, '
        'racials: ${racials.join()}, '
        'boni: ${boni.join()}, '
        'dice: $damageDice, '
        'primary: $primaryStats, '
        'saves: $saveStats, '
        'armor: $armor, '
        'weapon: $weapons, '
        'boni: ${perks.join(',')}, '
        'boniValues: ${boniValues.join(',')}, '
        'attributes: ${attributes.join(',')}, '
        '}';
  }
}

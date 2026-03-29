// ignore_for_file: equal_elements_in_set, omit_local_variable_types, prefer_final_locals, lines_longer_than_80_chars

void main() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи
/// - age (int) — твій вік
/// - height (double) — твій зріст у метрах
/// - name (String) — твоє ім'я
/// - isStudent (bool) — чи ти студент
void primitives() {
  /// create a variables
  int age = 48;
  String ageHex = '30';
  double height = 1.9200;
  String name = 'iVaN';
  bool isStudent = true;

  /// print a variables
  print(
    'age: $age, height: ${height.round()}, ${height.toStringAsPrecision(2)}, ${height.toStringAsPrecision(9)}, name: ${name.toUpperCase()}, isStudent (${isStudent.runtimeType}): $isStudent',
  );
  print('age from hex 0x$ageHex to dec: ${int.parse(ageHex, radix: 16)}');
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки, спробуй створити перевір print-ми, що вони не
/// виводяться
/// 3. Map — 3 предмети та їх оцінки
void collections() {
  print('Task 2:');

  /// create a variable
  List<String> colors = ['brown', 'grey', 'raspberry'];

  /// print a variable
  print('LIST collection: 3 colors: $colors');
  print('Automixed color: ${colors.join('-')}');
  print(
    'Perfect mixed color: ${colors.elementAt(1)}-${colors.elementAt(0)}-${colors.elementAt(2)}',
  );

  /// create a variable
  Set<String> point = {'4', '5', '5+', '5'};

  /// print a variable
  print('SET collection: $point');
  print('Try remove "4": ${point.remove('4')}');
  print('Result: $point');

  /// create a variable
  Map<String, int> achievement = {
    'Mathematics': 4,
    'Physics': 5,
    'Chemistry': 5,
  };

  /// print a variable
  print('MAP collection: $achievement');
  print('Only keys: ${achievement.keys}');
  print('Try to found Chemistry: ${achievement.keys.contains('Chemistry')}');
  print('Point by Physics: ${achievement['Physics']}');
  print('Map entries.elementAt(2): ${achievement.entries.elementAt(2)}');
}

/// Завдання 3: var, final, const
/// 1. Створи змінну через var — наприклад, місто проживання та зміни її
/// декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
void varFinalConst() {
  print('Task 3:');

  var city = 'Uzhgorod';
  print('type "var", name "city" at start: $city');
  city = city.toUpperCase();
  print('new uppercased value of "city": $city');
  city = 'New York';
  print('new value of "city": $city');

  final country = 'Ukraine';
  print('type "final", name "country": $country');

  const weekDays = 7;
  print('days in week: $weekDays');
  //  const taskNumber4 = '4';
}

const taskNumber4 = '4';

/// Завдання 4: Record
/// Створи іменований та не іменований (позиційний) record з твоїм ім'ям та
/// віком і виведи обидва поля.
void record() {
  print('Task $taskNumber4:');

  ({String name, int age}) personDataNm = (name: 'Ivan', age: 48);
  print('Record (named): $personDataNm');
  print('Record (named): ${personDataNm.name}, ${personDataNm.age}');

  (String, int) personDataUnm = ('Ivan', 48);
  print('Record (unnamed): ${personDataUnm.$2}, ${personDataUnm.$1}');
  print(
    'Record (unnamed), name only 1-st letter: ${personDataUnm.$2}, ${personDataUnm.$1.substring(0, 1)}',
  );
}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {
  print('Task 5:');
  String? nickname;
  print('nickname: $nickname');

  String displayName = nickname ?? 'Немає';
  print('displayName: $displayName');
  //print('nickname: ${nickname.isNotEmpty}'); //make compilation error
  //joke, developer harassment:
  nickname = 'null'; 
  print('nickname: $nickname');
  print('displayName: $nickname');
  print('nickname isNotEmpty: ${nickname.isNotEmpty}');
}

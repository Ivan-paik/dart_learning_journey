// ignore_for_file:  lines_longer_than_80_chars

import 'package:mocky/mocky.dart';

void main() {
  // 2. Створіть список `randomNouns` з 100 різними словами  (як це зробити, подивіться в документації  до пакету)

  final randomNouns = Mocky.words(100);

  // 3. Із `randomNouns` створіть Map<String, int> `nounsMap`, де:
  //     - ключ — слово;
  //     - значення — кількість символів у цьому слові.

  final nounsMap = randomNouns.asMap().map(
    (key, value) => MapEntry(value, value.length),
  );
  
  // 5. Створіть нову змінну Map<String, int> `nounsMapFiltered`.
  final nounsMapFiltered = <String, int>{};

  // 6. Додайте у `nounsMapFiltered` лише ті пари зі `nounsMap`, де довжина слова — парне число.
  nounsMap.forEach((key, value) {
    if (value % 2 == 0) {
      nounsMapFiltered[key] = value;
    }
  });

  //print('filtered: $nounsMapFiltered');

  // 7. Виведіть всі ключі зі `nounsMapFiltered`.
  print('Всі ключі зі nounsMapFiltered: ${nounsMapFiltered.keys}');
}

// ignore_for_file:  lines_longer_than_80_chars

// Task 1: Асинхронне отримання імені
// Створіть метод Future<String> fetchName(), який імітує асинхронну операцію.
// Цей метод повинен повертати ваше ім'я через 2 секунди (використайте Future.delayed та async/await).
// Виведіть результат у консоль у форматі: "Мене звати [результат виконання асинхронної операції]".

// Task 2: Асинхронне отримання віку
// Створіть метод Future<String> fetchAge(), який імітує асинхронну операцію.
// Цей метод повинен повертати рядок "25" через 1500 мілісекунд.
// Виведіть результат у консоль у форматі: "Мені [ваш вік] років".
// Реалізуйте логіку, щоб слово "рік" змінювалося відповідно до значення віку (наприклад: 21 рік, 22 роки, 25 років).


void main() async {
  print('----------------Початок програми----------------');

  //final resultName = await fetchName();
  
  //print('Мене звати $resultName');  

  final resultAge = await fetchAge();

  if (resultAge.endsWith('1') && resultAge != '11') {
    print('Мені $resultAge рік');
  } else if (resultAge.endsWith('2') && resultAge != '12'|| resultAge.endsWith('3') && resultAge != '13' || resultAge.endsWith('4') && resultAge != '14') {
    print('Мені $resultAge роки');
  } else {
    print('Мені $resultAge років');
  }

  print('----------------Кінець програми----------------');

}

// Future<String> fetchName() async {
//   await Future<void>.delayed(const Duration(seconds: 2));
//   return 'Іван';
// }

Future<String> fetchAge() async {
  await Future<void>.delayed(const Duration(milliseconds: 1500));
  return '25';
}

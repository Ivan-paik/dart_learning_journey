// ignore_for_file:  lines_longer_than_80_chars

// Task 1: Асинхронне отримання імені
// Створіть метод Future<String> fetchName(), який імітує асинхронну операцію.
// Цей метод повинен повертати ваше ім'я через 2 секунди (використайте Future.delayed та async/await).
// Виведіть результат у консоль у форматі: "Мене звати [результат виконання асинхронної операції]".

void main() async {
  print('----------------Початок програми----------------');

  final resultName = await fetchName();
  
  print('Мене звати $resultName');  

  print('----------------Кінець програми----------------');

}

Future<String> fetchName() async {
  await Future<void>.delayed(const Duration(seconds: 2));
  return 'Іван';
}

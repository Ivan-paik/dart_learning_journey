// ignore_for_file:  lines_longer_than_80_chars

// **Task 6: Стрім з чисел (fromIterable)**
// Створіть Stream<int> з довільних чисел (наприклад, від 1 до 5) за допомогою Stream.fromIterable.
// Виведіть кожне значення з цього стріму, використовуючи конструкцію await for.
// Виведіть кожне значення з цього ж стріму, використовуючи метод listen.

void main() async {
  print('----------------Початок програми----------------');

  final iterableStream = Stream.fromIterable([3, 1, 5, 2, 4]);
  
  print('from Iterable with await:');
  
  await for (final value in iterableStream) {
    print(value);
  }

  print('from Iterable with listen:');

  iterableStream.listen(
    (event) => print('$event'),
  ); //помітно різницю - тут не блокує виконання

  print('----------------Кінець програми-----------------');
}

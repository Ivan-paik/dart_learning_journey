// ignore_for_file:  lines_longer_than_80_chars

// **Task 7: Зворотний відлік зі стріму (periodic)**
// Створіть Stream<int> за допомогою Stream.periodic, який генерує числа з затримкою в 1 секунду.
// Обмежте відлік до 10 чисел за допомогою методу take.
// Виведіть кожне число у консоль у форматі: "1...", "2...", "3...", ... "10...".

void main() async {
  print('----------------Початок програми----------------');

  final stream = Stream.periodic(
    Duration(seconds: 1),
    (int count) {
      return count + 1;
    }
  ).take(10);

  await for (final value in stream) {
    print('$value...');
  }
  
  print('----------------Кінець програми-----------------');

}

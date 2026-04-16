// ignore_for_file:  lines_longer_than_80_chars

// Task 5: Зворотний відлік з затримкою**
// Напишіть функцію Future<String> delayedCountdown(int seconds), яка приймає кількість секунд.
// Ця функція повинна щосекунди виводити у консоль відлік (наприклад: "3...", "2...", "1...").
// В кінці відліку метод має повертати рядок "Старт!".

void main() async {
  print('----------------Початок програми----------------');

  delayedCountdown(5);

  print('Продовження роботи основного коду');
  
  print('----------------Кінець програми-----------------');
}

Future<void> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print('$i...');
    await Future<void>.delayed(const Duration(seconds: 1));
  }
  print('Старт!');
}

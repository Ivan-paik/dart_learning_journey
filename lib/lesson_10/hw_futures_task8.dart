// ignore_for_file:  lines_longer_than_80_chars

// **Task 8: Робота з StreamController**
// Створіть StreamController<String>.
// Додайте до цього контролера кілька довільних рядкових значень вручну (наприклад, "Hello", "World", "Dart").
// Прослухайте цей стрім (через метод listen) і виведіть всі значення у консоль.
// Закрийте контролер після додавання всіх значень.
// Використайте callback onDone у методі listen, щоб вивести повідомлення "Стрім завершено" після того, як стрім буде закритий.
import 'dart:async';

void main() async {
  print('----------------Початок програми----------------');

  final controller = StreamController<String>();

  // controller.add('Hello');
  // controller.add('World');
  // controller.add('Dart');

  controller
    ..add('Hello')
    ..add('World')
    ..add('Dart');

  controller.close();

  controller.stream.listen(
    //print, //vs code подобається лише цей варіант
    
    (event) => print('$event '), //по суті, так би треба
    
    // (String event) { 
    //   print(event);
    // },

    onDone: () => print('Стрім завершено'),
  );

}

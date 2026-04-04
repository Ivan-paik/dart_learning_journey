// ignore_for_file:  lines_longer_than_80_chars

import 'package:dart_learning_journey/lesson_07/names_deepseek.dart';
import 'package:dart_learning_journey/lesson_07/names_gpt.dart';

void main() {
  //В методі main cтворіть новий Set зі спільними іменами обох списків (names_deepseek та names_gpt).
  //Виведіть кількість елементів у цій множині.

  final union = ukrainianNamesDeepseek.union(ukrainianNamesGPT);
  
  print('Разом елементів: ${union.length}');

  //Створіть множину з іменами, що є в ukrainianNamesGPT, але яких немає в ukrainianNamesDeepseek. Виведіть ці імена.
  
  final differenceGptVsDsk = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);

  print('Імена, що є в ukrainianNamesGPT, але яких немає в ukrainianNamesDeepseek: $differenceGptVsDsk');

  //Створіть множину з іменами, що є в ukrainianNamesDeepseek, але яких немає в ukrainianNamesGPT. Виведіть ці імена.
  
  final differenceDskVsGpt = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
 
  print('Імена, що є в ukrainianNamesDeepseek, але яких немає в ukrainianNamesGPT: $differenceDskVsGpt');

}

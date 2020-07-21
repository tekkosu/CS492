import 'dart:math';

class EightBall {
  final Random random = Random();
  
  var _currentString = 'Tap the sentence above.';

  var fortuneArray = [
    'Sorry...  The eightball is broken.',
    'Better Luck Tomorrow.',
    'You are hired!',
    'When can you start?!?'
  ];

  int numOfStrings = 4;

  String get fortune => _currentString;

  void shake() {
    _currentString = fortuneArray[random.nextInt(numOfStrings)];
  }
}
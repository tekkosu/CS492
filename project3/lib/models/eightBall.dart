import 'dart:math'; //random function

class EightBall {
  final Random random = Random();
  
  var _currentString = 'Tap the sentence above.';

  var fortuneArray = [
    'Sorry...  The eightball is broken.',
    'Better Luck Tomorrow.',
    'You are hired!',
    'When can you start?!?',
    'You are not ready.',
    'You got the job!',
    'Why did you apply?',
    'Try again next year.'
  ];

  int numOfStrings = 8;

  //get random string
  String get fortune => _currentString;

  void shake() {
    _currentString = fortuneArray[random.nextInt(numOfStrings)];
  }
}
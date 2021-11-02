import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'I am Aashish Regmi.', a: true),
    Question(q: 'Pokhara is the capital city of Nepal.', a: false),
    Question(q: 'Pokhara is in Province no 4.', a: true),
    Question(q: 'The area of Nepal is 1,47,181 sq.km.', a: true),
    Question(q: 'Nepal is sea accessible country.', a: false),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

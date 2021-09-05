import 'dart:io';
import 'dart:math';

void main(){
  UI.getHeader();

  bool isInputMax = false;
  int? maxB;
  do{
    stdout.write('║ Enter max number you want to guess:');
    //var inputMax = stdin.readLineSync();
    maxB = int.tryParse(stdin.readLineSync()!);
    if(maxB != null){
      isInputMax = true;
    }else{
      isInputMax = false;
    }
  }while(!isInputMax);

  UI.getLine();

  var game = Game(maxRandom: maxB!);

  var isCorrect = false;

  do{
    stdout.write('║ Guess the number between 1 and ${game.maxRandom}: ');
    var input = stdin.readLineSync();
    int? guess = int.tryParse(input!);

    if(guess != null){
      Map resultMap =  game.doGuess(guess);
      isCorrect = resultMap['isCorrect'];
      print('║ ➜ $guess : ${resultMap['text']}');
      UI.getLine();
    }

  }while(!isCorrect);

  var total = game.getTotalGuesses();

  print('║ Total guesses : $total');

  UI.getBottom();
}

class Game{
  int maxRandom = 100;
  int countGuess = 0;
  late int answer; //late บอกไว้ว่า กำหนดค่าทีหลัง

  static const List feedbackList = [ //Map, const คือ ค่าคงที่ในตอน complie (complie-time constanst) เร็วขึ้นนิดหน่อย
    //final เป็น (runtime constanst)
    //ถ้า const ใช้กับ field ของ class ต้องเป็น static ด้วย
    {
      'text': 'TOO HIGHT! ▲',
      'isCorrect' : false,
    },
    {
      'text': 'TOO LOW! ▼',
      'isCorrect' : false,
    },
    {
      'text': 'CORRECT! ❤',
      'isCorrect' : true,
    }
  ];

  Game({int maxRandom : 100}){

    this.maxRandom = maxRandom;
    this.answer = Random().nextInt(maxRandom) + 1;
  }

  Map doGuess(int num){
    countGuess++;
    if(num > this.answer){
      return feedbackList[0];
    }else if(num < this.answer){
      return feedbackList[1];;
    }else{
      return feedbackList[2];;
    }
  }

  int getTotalGuesses(){
    return countGuess;
  }
}

class UI{
  static void getHeader(){
    print('╔═══════════════════════════════════════════════');
    print('║               GUESS THE NUMBER                ');
    getLine();
  }

  static void getLine(){
    print('╟───────────────────────────────────────────────');
  }

  static void getBottom(){
    getLine();
    print('║                   THE END                     ');
    print('╚═══════════════════════════════════════════════');
  }
}
import 'dart:io';
import 'dart:math';

void main(){

  const int MAX_RANDOM = 100; //ค่าคงที่
  Random r = Random(); //ในปัจจุบัน ไม่จำเป็นต้องใส่ new ก็ได้
  int answer = r.nextInt(MAX_RANDOM) + 1; //nextInt(100) จะสุ่มเลข 0 - 99
  int countGuess = 0;
  int? guess = -1;

  print('╔══════════════════════════════════════════');
  print('║               GUESS THE NUMBER           ');
  do {
    if(guess != null) print('╟──────────────────────────────────────────');
    stdout.write('Guess the number between 1 and $MAX_RANDOM: '); //พิมพ์แล้วไม่ขึ้นบรรทัดใหม่ให้อัตโนมัติ
    String? input = stdin.readLineSync(); //รับข้อมูลทางคีย์บอร์ดเข้ามา มีค่าเป็น null ได้
    //if (input == null) return;
    guess = int.tryParse(input!); //ถ้าแน่ใจว่า ตัวแปรนี้ไม่เป็น null แน่ๆ ใส่ !

    if(guess != null){
      countGuess++;
      if (answer == guess) {
        print('$guess is CORRECT ❤, total guess: $countGuess');
      } else {
        stdout.write('║ ➜ ');
        if(answer < guess){
          print('$guess is TOO High! ▲');
        }else{
          print("$guess is TOO LOW! ▼");
        }
      }
    }

  }while(answer != guess);
  print('╟──────────────────────────────────────────');
  print('║                  THE END                 ');
  print('╚══════════════════════════════════════════');


}



//print(myList[3]);
/*
  for(var i = 0; i < myList.length; ++i){
    print(myList[i]);
  }
  */

/* // for each
  for(var item in myList){
    print(item);
  }
  */

/* //for each จาก List *break ไม่ได้
  myList.forEach((item) {
    print(item); //function callback
  });
  */

/*
  List<String> myList = ['hello', 'aaa', 'bbb']; //ใน dart, array จะเป็น List, ถ้าไม่กำหนดประเภท ใน List จะเป็นอะไรก็ได้
  myList.add('ccc');

   */
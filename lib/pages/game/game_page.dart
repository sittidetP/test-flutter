import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> iconNum13 = [];
    List<Widget> iconNum46 = [];
    List<Widget> iconNum79 = [];
    List<Widget> iconNum0 = [];

    for (int i = 1; i <= 3; ++i) {
      iconNum13.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade400, width: 3.0),
          ),
          child: Center(
              child: Text(
            '$i',
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ));
    }

    for (int i = 4; i <= 6; ++i) {
      iconNum46.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade400, width: 3.0),
          ),
          child: Center(
              child: Text(
            '$i',
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ));
    }

    for (int i = 7; i <= 9; ++i) {
      iconNum79.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade400, width: 3.0),
          ),
          child: Center(
              child: Text(
            '$i',
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ));
    }

    iconNum0.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
      ),
    ));

    iconNum0.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400, width: 3.0),
        ),
        child: Center(
            child: Text(
          '0',
          style: TextStyle(fontSize: 30.0),
        )),
      ),
    ));

    iconNum0.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        child: Icon(
          Icons.backspace_outlined,
          color: Colors.grey.shade500,
          size: 35.5,
        ),
      ),
    ));

    return Scaffold(
      body: Container(
        width: 1080.0,
        height: 1920.0,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 95.0, bottom: 10.0),
              child: Icon(
                Icons.lock_outline,
                size: 65.0,
                color: Colors.grey.shade600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Text(
                'กรุณาใส่รหัสผ่าน',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: iconNum13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: iconNum46,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: iconNum79,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: iconNum0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text('ลืมรหัสผ่าน', style: TextStyle(fontSize: 18.0),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

/* ของ Column
// แนวตั้ง -> MainAxis
// แนวนอน -> CrossAxis
 */
/* ของ Row
// แนวนอน -> MainAxis
 */
/*
return Scaffold(
      //แทนแต่ละหน้าจอ
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20.0,
                  height: 20.0,
                  color: Colors.pink,
                ),
                Padding( //สร้างระยะห่างโดยรอบคงที่
                  padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),//named constructor -> คล้าย overloading แต่เฉพาะเจาะจงกว่า
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  color: Colors.orange,
                ),
              ],
            ),
            Text(
              'Hello',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              'Flutter',
              textAlign: TextAlign.center,
            ),
            Text(
              '123',
              textAlign: TextAlign.center,
            ),
            Text(
              '456',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
 */
/*
https://pastebin.com/pgUx7DBG //การบ้าน 5
 */

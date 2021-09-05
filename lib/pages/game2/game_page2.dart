import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage2 extends StatefulWidget {
  const GamePage2({Key? key}) : super(key: key);

  @override
  _GamePage2State createState() => _GamePage2State();
}

class _GamePage2State extends State<GamePage2> {
  //var i = 0; //ทุกตัวแปรที่สร้างมาเป็นตัวแปร state ที่เปลี่ยนค่าได้
  var list = [1, 2, 3];
  bool showNumber = true;

  _handleClickButton() {
    setState(() {
      list.add(list.length + 1);
    });
  }

  _handleClickButton2() {
    setState(() {
      showNumber = !showNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list
                        .map((e) => Text(
                              e.toString(),
                              style: TextStyle(fontSize: 30.0),
                            ))
                        .toList(),
                    /*
                  children: [
                    for(var item in list)
                      Text(item.toString(), style: TextStyle(fontSize: 30.0),),
                    TextButton(onPressed: _handleClickButton, child: Text('TEST')) //ไม่ใส่วงเล็บที่ชื่อฟังก์ชัน
                  ],
                   */
                  ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _handleClickButton, child: Text('TEST')),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(onPressed: _handleClickButton2, child: Text('TEST2'))
                ],
              ),
            Image(image: AssetImage(showNumber ? 'assets/images/op.png' : 'assets/images/p.png'),
                width: 100.0,
              fit: BoxFit.contain,
              ),
            ],
          ),
    ));
  }
}

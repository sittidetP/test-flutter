import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class GamePageA5 extends StatelessWidget {
  const GamePageA5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double starSize = 22.0;

    List<Widget> iconList = [];

    for(int i = 0; i < 4 ; ++ i){
      iconList.add(Icon(Icons.star, size: starSize, color: Colors.amber));
    }
    iconList.add(Icon(Icons.star_border, size: starSize, color: Colors.amber));

    int answer = Random().nextInt(100);
    TextStyle txtS = TextStyle(
      color: Colors.blue,
      fontSize: 200.0,
    );

    var status = false;

    List<int> list1 = [
      1, 2, 3,
      for(var i = 1; i <= 10; i++)
        i,
      if(status)
        123
    ];
    /*
    Center center = Center(
        child: Text(
      '$answer',
      textDirection: TextDirection.ltr,
      style: txtS,
    ));
    */

    return Scaffold(
      //แทนแต่ละหน้าจอ
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.yellow.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container( //ถ้าอยากให้ Row มีความสูง ต้องใส่ Container แล้วใส่ height
              height: 100.0,
              child: Row( //สร้าง Row เปล่าๆ ไม่มีความสูงมาให้
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.person,
                    size: 120.0,
                    color: Colors.blue,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'สิทธิเดช ปวุตินันท์',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22.0),
                      ), //ชื่อ
                      Row(
                        //children: iconList,
                        children: [
                          //collection-for
                          for(var item in iconList) //ต้องมีบรรทัดเดียว และต้องเป็น widget เท่านั้น, ทำใน list , พ่นข้อมูลออกมา
                            item
                          ,
                          //collection-if
                          if(status)
                            Icon(Icons.star, size: starSize, color: Colors.blue)
                        ],
                      ) //ดาว
                    ],
                  )
                ],
              ),
            ),
            Expanded( //ยืด mainAxis ให้สุด
              child: Container(
                child: Center(
                  child: Text(
                    '$answer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 150.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('RANDOM'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
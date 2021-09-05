/*
1กค-5533-57
  2กค-6087-61
  3กค-6230-41
  4กค-5916-44
  5กค-6166-50
 */
import 'package:hello/test1.dart';

void main() {
  List list = [1,2,3,4,5];
  list.map((e) => null);


  list.forEach((item) {
    print(item);
  });

  return;
  /*
  Map<String, dynamic> reportMap = {
    'date': '1กค',
    'case': 5533,
    'death': 57,
  };
  Map<String, dynamic> reportMap2 = {
    'date': '2กค',
    'case': 6087,
    'death': 61,
  };
  Map<String, dynamic> reportMap3 = {
    'date': '3กค',
    'case': 6230,
    'death': 41,
  };
  */
  /*
  List<String> dateList = ['1กค', '2กค', '3กค', '4กค', '5กค'];
  List<int> caseList = [5533, 6087, 6230, 5916, 6166];
  List<int> deathList = [57, 61, 41, 44, 50];
   */

  List<Map<String, dynamic>> reportList = [
    {'date': '1กค', 'case': 5533, 'death': 57},
    {'date': '2กค', 'case': 6087, 'death': 61},
    {'date': '3กค', 'case': 6230, 'death': 41},
    {'date': '4กค', 'case': 5916, 'death': 44},
    {'date': '5กค', 'case': 6166, 'death': 50}
  ];

/*
  for (var i = 0; i < reportList.length; i++) {
    print('วันที่ ${reportList[i]['date']}, ติดเชื้อ ${reportList[i]['case']}, เสียชีวิต ${reportList[i]['death']}');
  }
*/

  var f =(Map<String, dynamic> item) { //นืพจน์ function
    print('วันที่ ${item['date']}, ติดเชื้อ ${item['case']}, เสียชีวิต ${item['death']}');
  }; //() => arrow syntax เอาไว้ return แม้กระทั่ง void

  reportList.forEach(f); //พารามิเตอร์ต้องเหมือนกับรูปแบบของข้อมูลใน List, ส่งตัวแปรที่เป็น function ไม่ต้องใส่ ()
}

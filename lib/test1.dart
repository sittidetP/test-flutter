void main() {
  /*
  //error
  var bar = 123;
  bar  = "hello"
   */

  //dynamic type
  /*
  //type 1
  var bar; //var แล้วไม่ initialize จะกลายเป็นตัวแปรแบบ dynamic
  bar = 123;
  bar = "hello";
  print("$bar");

  //type 2
  dynamic bar;
  bar = 123;
  bar = "hello";
  //print("$bar");
  //type 3 แต่ baz เป็นประเภท object เพราะ object เป็นคลาสแม่ของคลาสอื่นๆ ไม่ทางตรงก็ทางอ้อม
  Object baz;
  baz = 123;
  baz = "hello";
  //print("$baz");
   */

  /*
  dynamic x = 123;
  x.toUpperCase(); //run time error

  String a = f()!; // ! บอก complier ว่าไม่ null
   */
  /*
  var foo = const [1, 2, 3]; //const List -> ไม่ยอมให้แก้ไข
  //foo.add(4);// เพิ่ม/ลดไม่ได้
  foo = [4,5,6]; //ชี้มาที่ List ตัวใหม่
  foo.add(999);
  print(foo);
   */

  /*
  var f = sum; // f เป็น object ชนิต Function
  var result = f(123, 456);
  print(result);
   */

  /*
  var f = (int a, int b){ //Function Expression, Anonymous Function (นิพจน์ Function)
    return a+b;
  };
   */

  /*
  var f = (int a, int b) => a+b; //arrow syntax ของ Function Expression
  */
  sum(1, 2);
}


String? f() {
  return "hello";
}

/*
int sum(int a, int b){ // Function Declaretion (ประกาศ Function เมื่อมีประโยคเดียวและเป็นการ return ค่า)
  return a+b;
}
*/

/*
int sum(int a, int b, {int? c, int d = 999}){ // c, d => named parameter (optional)
//ถ้าต้องการให้เป็น required ใส่คีย์เวริด์ required ด้วย
  return a + b + c! + d;
}
*/
int sum(int a, int b, [int c = 0]) {
  return a + b + c;
}

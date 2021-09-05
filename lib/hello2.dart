//Top-level functions ในที่นี้มี main(), sayHello() call ได้จากทุกไฟล์ อยู่นอก class
void main(){
  var hello = Hello(text: 'Flutter');
  hello.say();
  hello = Hello();
  hello.say();

}
//ใน dart ไม่มี access modifier, ถ้าอยากให้เป็น private ให้ _ นำหน้าชื่อตัวแปร
class Hello{
  // static void say({String text = 'World'}){// Static Method
  //   print('Hello $text');
  // }

  final String text;
  // default is public

  //Hello(String t) : _text = t; //initializer
  // Hello(String t){
  //   this.text  = t;
  // }

  //Hello(this.text); //Shortcut of Constructor

  Hello({this.text : 'World'}); //Shortcut of Constructor(named version, name same as in field)

  void say(){// Instance Method
      print('Hello ${this.text}');
  }
}
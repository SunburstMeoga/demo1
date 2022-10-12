// class Person {
//   late String name;
//   late int age;
//   //默认构造函数
//   // Person(String name, int age) {
//   //   this.name = name;
//   //   this.age = age;
//   // }

//   //默认构造函数的简写
//   Person(String this.name, int this.age);

//   // 构造函数可以写多个
//   // 命名构造函数
//   Person.now() {
//     print('我是命名构造函数');
//   }
//   void printInfo() {
//     print('${this.name} --- ${this.age}');
//   }
// }

// class Rect {
//   num height;
//   num width;
//   Rect(this.height, this.width);

//   get area {
//     return this.height * this.width;
//   }

//   set areaHeight(value) {
//     this.height = value;
//   }
// }

class Person {
  late String name;
  late int age;
  Person(this.name, this.age);

  printInfo() {
    print('${this.name}--${this.age}');
  }
}

class Web extends Person {
  Web(String name, int age) : super(name, age);
}

main() {
  Web w = new Web('Lotto', 23);
  w.printInfo();
}

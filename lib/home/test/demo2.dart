printInfo() {
  print('我是一个自定义方法');
}

int getNum() {
  var number = 3;
  return number;
}

String getInfo(String name, [int? age, String sex = '男']) {
  age ?? 18;
  return "姓名：$name---年龄：$age";
}

main() {
  printInfo();

  var n = getInfo('Lotto');
  print(n);
}

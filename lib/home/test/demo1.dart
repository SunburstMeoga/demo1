main() {
  List<String> list1 = ['fasdf', 'wrewer'];
  List<int> list2 = [323, 4324];
  List<dynamic> list3 = [343, 'wrewer'];
  Map list4 = {"name": 'lotto', "age": '27'};
  list4.forEach((key, value) {
    print('$key,$value');
  });
  List listInfo = [
    {'isFlag': true},
    {'isFlag': false},
    {'isFlag': false},
    {'isFlag': false}
  ];
  var newList = listInfo.map((item) {
    item['isFlag'] == true;
  });

  bool isEvenNumber(n) {
    if (n % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  printNumber(n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNumber(12);
}

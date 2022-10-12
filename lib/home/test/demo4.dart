abstract class Db {
  //当做接口 接口：就是规定和规范
  String? uri;
  add(data);
  save();
  delete();
}

class Mysql implements Db {
  String? uri;
  Mysql(this.uri);
  @override
  add(data) {
    // TODO: implement add
    print('这是mysql的add方法---$data');
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }
}

main() {
  Mysql m1 = new Mysql('xxxx');
  m1.add('sfsf');
}

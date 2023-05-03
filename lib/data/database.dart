import 'package:hive_flutter/hive_flutter.dart';

class MyBabyHealthDataBase {
  List myBabyList = [];

  final _myBabyBox = Hive.box('myBabyBox');

  void createInitialData() {
    myBabyList = [];
  }

  void loadData() {
    myBabyList = _myBabyBox.get('MYBABYSLIST');
  }

  void updateData() {
    _myBabyBox.put('MYBABYSLIST', myBabyList);
  }
}

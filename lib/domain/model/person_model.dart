import 'package:hive/hive.dart';

part 'person_model.g.dart';

@HiveType(typeId: 0)
class PersonModel extends HiveObject {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String lastName;
  @HiveField(2)
  late double age;
  @HiveField(3)
  late double growth;
  @HiveField(4)
  late double bodyWeight;
  @HiveField(5)
  late bool isFemale;
}

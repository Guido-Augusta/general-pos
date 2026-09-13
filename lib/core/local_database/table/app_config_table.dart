import 'package:drift/drift.dart';

class AppConfigModel extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();
  // string, int, double, bool
  TextColumn get type => text().withDefault(const Constant('string'))();
  DateTimeColumn get updateAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {key};
}

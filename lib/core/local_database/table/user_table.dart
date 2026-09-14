import 'package:drift/drift.dart';

class UserModel extends Table {
  TextColumn get id => text()();
  TextColumn get username => text()();
  TextColumn get passwordHash => text()();
  TextColumn get role => text()(); // admin | employee
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

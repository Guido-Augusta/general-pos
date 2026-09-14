import 'package:drift/drift.dart';

class ProductModel extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get image => text()();
  IntColumn get price => integer()();
  TextColumn get categoryId => text()();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

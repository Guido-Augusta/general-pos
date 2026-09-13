import 'package:drift/drift.dart';

class OrderTypeModel extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get info => text()();

  // "fixed" | "percentage" | null
  TextColumn get surchargeType => text().nullable()();
  // 10000 | 20% | null
  IntColumn get surchargeValue => integer().nullable()();

  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

import 'package:drift/drift.dart';

class TransactionItemModel extends Table {
  TextColumn get id => text()();

  TextColumn get transactionId => text()();

  TextColumn get productId => text()();
  TextColumn get productNameSnapshot => text()();
  TextColumn get categoryNameSnapshot => text().nullable()();
  TextColumn get imageSnapshot => text().nullable()();
  IntColumn get priceSnapshot => integer()();

  IntColumn get quantity => integer()();
  IntColumn get totalPrice => integer()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDate)();

  @override
  Set<Column> get primaryKey => {id};
}

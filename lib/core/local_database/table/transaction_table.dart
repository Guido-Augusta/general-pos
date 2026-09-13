import 'package:drift/drift.dart';

class TransactionModel extends Table {
  TextColumn get id => text()();
  TextColumn get transactionCode => text()();

  TextColumn get cashierId => text()();
  TextColumn get cashierNameSnapshot => text()();

  TextColumn get customerName => text()();
  TextColumn get paymentMethod => text()();

  TextColumn get orderTypeId => text().nullable()();
  TextColumn get orderTypeNameSnapshot => text().nullable()();
  TextColumn get orderTypeInfoSnapshot => text().nullable()();
  TextColumn get surchargeType => text().nullable()();
  IntColumn get surchargeValue => integer().nullable()();
  IntColumn get surchargeAmount => integer().nullable()();

  IntColumn get subtotal => integer()();
  IntColumn get tax => integer()();
  IntColumn get taxAmount => integer()();
  IntColumn get service => integer()();
  IntColumn get serviceAmount => integer()();
  IntColumn get totalAmount => integer()();

  // created, paid, completed
  TextColumn get status => text()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

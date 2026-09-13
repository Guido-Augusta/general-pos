import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:general_pos/core/local_database/table/app_config_table.dart';
import 'package:general_pos/core/local_database/table/order_type_table.dart';
import 'package:general_pos/core/local_database/table/product_category_table.dart';
import 'package:general_pos/core/local_database/table/product_table.dart';
import 'package:general_pos/core/local_database/table/transaction_item_table.dart';
import 'package:general_pos/core/local_database/table/transaction_table.dart';
import 'package:general_pos/core/local_database/table/user_table.dart';
import 'package:general_pos/core/utils/app_utils.dart';
import 'package:path_provider/path_provider.dart';

part 'local_database.g.dart';

@DriftDatabase(
  tables: [
    UserModel,
    AppConfigModel,
    OrderTypeModel,
    ProductCategoryModel,
    ProductModel,
    TransactionModel,
    TransactionItemModel,
  ],
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase([QueryExecutor? executor])
    : super(executor ?? _openConnection());

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'my_database',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await into(userModel).insert(
        UserModelCompanion.insert(
          id: AppUtils.generateUUID(),
          username: "admin",
          passwordHash: AppUtils.generateHashPassword("admin"),
          role: "admin",
          isActive: Value(true),
        ),
      );
      await batch((batch) {
        batch.insertAll(appConfigModel, [
          AppConfigModelCompanion.insert(
            key: "tax",
            value: "11",
            type: const Value("int"),
          ),
          AppConfigModelCompanion.insert(
            key: "service_fee",
            value: "5",
            type: const Value("int"),
          ),
        ]);
      });

      if (kDebugMode) {
        await seedProductData();
      }
    },
  );

  Future<void> seedProductData() async {
    final mainMealId = AppUtils.generateUUID();
    final saladId = AppUtils.generateUUID();
    final ramenId = AppUtils.generateUUID();
    final sushiId = AppUtils.generateUUID();
    final dessertId = AppUtils.generateUUID();
    final coffeeId = AppUtils.generateUUID();
    final juiceId = AppUtils.generateUUID();

    await batch((batch) {
      /// INSERT CATEGORIES
      batch.insertAll(productCategoryModel, [
        ProductCategoryModelCompanion.insert(
          id: mainMealId,
          name: "Main Meal",
          image: "main_meal.png",
        ),
        ProductCategoryModelCompanion.insert(
          id: saladId,
          name: "Salad",
          image: "salad.png",
        ),
        ProductCategoryModelCompanion.insert(
          id: ramenId,
          name: "Ramen",
          image: "ramen.png",
        ),
        ProductCategoryModelCompanion.insert(
          id: sushiId,
          name: "Sushi",
          image: "sushi.png",
        ),
        ProductCategoryModelCompanion.insert(
          id: dessertId,
          name: "Dessert",
          image: "dessert.png",
        ),
        ProductCategoryModelCompanion.insert(
          id: coffeeId,
          name: "Coffee",
          image: "coffee.png",
        ),
        ProductCategoryModelCompanion.insert(
          id: juiceId,
          name: "Juice",
          image: "juice.png",
        ),
      ]);

      /// INSERT PRODUCTS
      batch.insertAll(productModel, [
        /// MAIN MEAL
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Grilled Chicken",
          image: "grilled_chicken.png",
          price: 45000,
          categoryId: mainMealId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Beef Steak",
          image: "beef_steak.png",
          price: 85000,
          categoryId: mainMealId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Fried Rice Special",
          image: "fried_rice.png",
          price: 35000,
          categoryId: mainMealId,
        ),

        /// SALAD
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Caesar Salad",
          image: "caesar_salad.png",
          price: 30000,
          categoryId: saladId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Greek Salad",
          image: "greek_salad.png",
          price: 32000,
          categoryId: saladId,
        ),

        /// RAMEN
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Shoyu Ramen",
          image: "shoyu_ramen.png",
          price: 40000,
          categoryId: ramenId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Tonkotsu Ramen",
          image: "tonkotsu_ramen.png",
          price: 45000,
          categoryId: ramenId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Spicy Miso Ramen",
          image: "spicy_miso_ramen.png",
          price: 42000,
          categoryId: ramenId,
        ),

        /// SUSHI
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Salmon Nigiri",
          image: "salmon_nigiri.png",
          price: 38000,
          categoryId: sushiId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "California Roll",
          image: "california_roll.png",
          price: 35000,
          categoryId: sushiId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Tuna Sashimi",
          image: "tuna_sashimi.png",
          price: 50000,
          categoryId: sushiId,
        ),

        /// DESSERT
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Chocolate Cake",
          image: "chocolate_cake.png",
          price: 28000,
          categoryId: dessertId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Cheesecake",
          image: "cheesecake.png",
          price: 30000,
          categoryId: dessertId,
        ),

        /// COFFEE
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Espresso",
          image: "espresso.png",
          price: 20000,
          categoryId: coffeeId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Cappuccino",
          image: "cappuccino.png",
          price: 25000,
          categoryId: coffeeId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Latte",
          image: "latte.png",
          price: 27000,
          categoryId: coffeeId,
        ),

        /// JUICE
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Orange Juice",
          image: "orange_juice.png",
          price: 22000,
          categoryId: juiceId,
        ),
        ProductModelCompanion.insert(
          id: AppUtils.generateUUID(),
          name: "Avocado Juice",
          image: "avocado_juice.png",
          price: 25000,
          categoryId: juiceId,
        ),
      ]);
    });
  }
}

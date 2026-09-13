import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id'),
  ];

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language;

  /// No description provided for @change_language.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get change_language;

  /// No description provided for @select_language.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get select_language;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get dark_mode;

  /// No description provided for @select_image.
  ///
  /// In en, this message translates to:
  /// **'Select Image'**
  String get select_image;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enter_username.
  ///
  /// In en, this message translates to:
  /// **'Enter your username'**
  String get enter_username;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enter_password;

  /// No description provided for @general_error_message.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong!'**
  String get general_error_message;

  /// No description provided for @user_not_found.
  ///
  /// In en, this message translates to:
  /// **'User not found!'**
  String get user_not_found;

  /// No description provided for @user_inactive.
  ///
  /// In en, this message translates to:
  /// **'User inactive, please contact admin!'**
  String get user_inactive;

  /// No description provided for @password_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Password is incorrect!'**
  String get password_incorrect;

  /// No description provided for @product_dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get product_dashboard;

  /// No description provided for @product_orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get product_orders;

  /// No description provided for @product_transaction.
  ///
  /// In en, this message translates to:
  /// **'Transaction'**
  String get product_transaction;

  /// No description provided for @product_store.
  ///
  /// In en, this message translates to:
  /// **'Store'**
  String get product_store;

  /// No description provided for @product_users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get product_users;

  /// No description provided for @product_setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get product_setting;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @role_admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get role_admin;

  /// No description provided for @role_employee.
  ///
  /// In en, this message translates to:
  /// **'Employee'**
  String get role_employee;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm_logout_title.
  ///
  /// In en, this message translates to:
  /// **'Confirm logout'**
  String get confirm_logout_title;

  /// No description provided for @confirm_logout_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to end your current session?'**
  String get confirm_logout_subtitle;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @user_management.
  ///
  /// In en, this message translates to:
  /// **'User Management'**
  String get user_management;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @change_password_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Change your password to keep your account secure'**
  String get change_password_subtitle;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @current_password.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get current_password;

  /// No description provided for @enter_current_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your current password'**
  String get enter_current_password;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @enter_new_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your new password'**
  String get enter_new_password;

  /// No description provided for @change_password_successful.
  ///
  /// In en, this message translates to:
  /// **'Change password successful!'**
  String get change_password_successful;

  /// No description provided for @empty_filed_failure.
  ///
  /// In en, this message translates to:
  /// **'Please fill all required field'**
  String get empty_filed_failure;

  /// No description provided for @current_user.
  ///
  /// In en, this message translates to:
  /// **'Current User'**
  String get current_user;

  /// No description provided for @add_user.
  ///
  /// In en, this message translates to:
  /// **'Add User'**
  String get add_user;

  /// No description provided for @edit_user.
  ///
  /// In en, this message translates to:
  /// **'Edit User'**
  String get edit_user;

  /// No description provided for @delete_user.
  ///
  /// In en, this message translates to:
  /// **'Delete User'**
  String get delete_user;

  /// No description provided for @add_user_successful.
  ///
  /// In en, this message translates to:
  /// **'Add user successful!'**
  String get add_user_successful;

  /// No description provided for @add_user_failure_duplicate.
  ///
  /// In en, this message translates to:
  /// **'User with that username already exist'**
  String get add_user_failure_duplicate;

  /// No description provided for @delete_user_confirmation_title.
  ///
  /// In en, this message translates to:
  /// **'Delete this user?'**
  String get delete_user_confirmation_title;

  /// No description provided for @delete_user_confirmation_subtitle.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent. Once deleted, this user cannot be reactivated.'**
  String get delete_user_confirmation_subtitle;

  /// No description provided for @tax_service.
  ///
  /// In en, this message translates to:
  /// **'Tax & Service'**
  String get tax_service;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// No description provided for @tax_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tax by government'**
  String get tax_subtitle;

  /// No description provided for @service_fee.
  ///
  /// In en, this message translates to:
  /// **'Service Fee'**
  String get service_fee;

  /// No description provided for @service_fee_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tip for employee'**
  String get service_fee_subtitle;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @maximum_percentage_exceeded.
  ///
  /// In en, this message translates to:
  /// **'Maximum percentage is 100'**
  String get maximum_percentage_exceeded;

  /// No description provided for @save_tax_service_success.
  ///
  /// In en, this message translates to:
  /// **'Tax and service fee changes saved!'**
  String get save_tax_service_success;

  /// No description provided for @save_tax_service_failure.
  ///
  /// In en, this message translates to:
  /// **'Tax and service fee changes saved failed!'**
  String get save_tax_service_failure;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product;

  /// No description provided for @product_categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get product_categories;

  /// No description provided for @product_categories_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Add, Remove, Manage Categories'**
  String get product_categories_subtitle;

  /// No description provided for @product_items.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product_items;

  /// No description provided for @product_items_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Add, Remove, Manage Product'**
  String get product_items_subtitle;

  /// No description provided for @add_category.
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get add_category;

  /// No description provided for @edit_category.
  ///
  /// In en, this message translates to:
  /// **'Edit Category'**
  String get edit_category;

  /// No description provided for @delete_category.
  ///
  /// In en, this message translates to:
  /// **'Delete Category'**
  String get delete_category;

  /// No description provided for @category_name.
  ///
  /// In en, this message translates to:
  /// **'Category Name'**
  String get category_name;

  /// No description provided for @enter_category_name.
  ///
  /// In en, this message translates to:
  /// **'Enter category name'**
  String get enter_category_name;

  /// No description provided for @category_image.
  ///
  /// In en, this message translates to:
  /// **'Category Image'**
  String get category_image;

  /// No description provided for @category_image_description.
  ///
  /// In en, this message translates to:
  /// **'Click to choose image'**
  String get category_image_description;

  /// No description provided for @add_product_category_success.
  ///
  /// In en, this message translates to:
  /// **'Success add product category!'**
  String get add_product_category_success;

  /// No description provided for @edit_product_category_success.
  ///
  /// In en, this message translates to:
  /// **'Success edit product category!'**
  String get edit_product_category_success;

  /// No description provided for @delete_product_category_success.
  ///
  /// In en, this message translates to:
  /// **'Success delete product category!'**
  String get delete_product_category_success;

  /// No description provided for @add_product_category_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to add product category!'**
  String get add_product_category_failure;

  /// No description provided for @edit_product_category_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit product category!'**
  String get edit_product_category_failure;

  /// No description provided for @delete_product_category_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete product category!'**
  String get delete_product_category_failure;

  /// No description provided for @delete_category_confirmation_title.
  ///
  /// In en, this message translates to:
  /// **'Delete this product category?'**
  String get delete_category_confirmation_title;

  /// No description provided for @delete_category_confirmation_subtitle.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent. Once deleted, this product category cannot be reactivated.'**
  String get delete_category_confirmation_subtitle;

  /// No description provided for @add_product.
  ///
  /// In en, this message translates to:
  /// **'Add Product'**
  String get add_product;

  /// No description provided for @edit_product.
  ///
  /// In en, this message translates to:
  /// **'Edit Product'**
  String get edit_product;

  /// No description provided for @delete_product.
  ///
  /// In en, this message translates to:
  /// **'Delete Product'**
  String get delete_product;

  /// No description provided for @product_name.
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get product_name;

  /// No description provided for @enter_product_name.
  ///
  /// In en, this message translates to:
  /// **'Enter product name'**
  String get enter_product_name;

  /// No description provided for @product_price.
  ///
  /// In en, this message translates to:
  /// **'Product Price'**
  String get product_price;

  /// No description provided for @enter_product_price.
  ///
  /// In en, this message translates to:
  /// **'Enter product price'**
  String get enter_product_price;

  /// No description provided for @product_category.
  ///
  /// In en, this message translates to:
  /// **'Product Category'**
  String get product_category;

  /// No description provided for @enter_product_category.
  ///
  /// In en, this message translates to:
  /// **'Choose product category'**
  String get enter_product_category;

  /// No description provided for @product_image.
  ///
  /// In en, this message translates to:
  /// **'Product Image'**
  String get product_image;

  /// No description provided for @product_image_description.
  ///
  /// In en, this message translates to:
  /// **'Click to choose image'**
  String get product_image_description;

  /// No description provided for @add_product_success.
  ///
  /// In en, this message translates to:
  /// **'Success add product!'**
  String get add_product_success;

  /// No description provided for @edit_product_success.
  ///
  /// In en, this message translates to:
  /// **'Success edit product!'**
  String get edit_product_success;

  /// No description provided for @delete_product_success.
  ///
  /// In en, this message translates to:
  /// **'Success delete product!'**
  String get delete_product_success;

  /// No description provided for @add_product_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to add product!'**
  String get add_product_failure;

  /// No description provided for @edit_product_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit product!'**
  String get edit_product_failure;

  /// No description provided for @delete_product_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete product!'**
  String get delete_product_failure;

  /// No description provided for @delete_product_confirmation_title.
  ///
  /// In en, this message translates to:
  /// **'Delete this product?'**
  String get delete_product_confirmation_title;

  /// No description provided for @delete_product_confirmation_subtitle.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent. Once deleted, this product cannot be reactivated.'**
  String get delete_product_confirmation_subtitle;

  /// No description provided for @empty_orders.
  ///
  /// In en, this message translates to:
  /// **'Add product to start ordering!'**
  String get empty_orders;

  /// No description provided for @create_order.
  ///
  /// In en, this message translates to:
  /// **'Create Order'**
  String get create_order;

  /// No description provided for @order_summary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get order_summary;

  /// No description provided for @total_price.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get total_price;

  /// No description provided for @customer_name.
  ///
  /// In en, this message translates to:
  /// **'Customer Name'**
  String get customer_name;

  /// No description provided for @enter_customer_name.
  ///
  /// In en, this message translates to:
  /// **'Enter customer name'**
  String get enter_customer_name;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Sub Total'**
  String get subtotal;

  /// No description provided for @confirm_order.
  ///
  /// In en, this message translates to:
  /// **'Confirm Order'**
  String get confirm_order;

  /// No description provided for @create_order_successful.
  ///
  /// In en, this message translates to:
  /// **'Order Created!'**
  String get create_order_successful;

  /// No description provided for @create_order_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to create order!'**
  String get create_order_failure;

  /// No description provided for @cashier_name.
  ///
  /// In en, this message translates to:
  /// **'Cashier Name'**
  String get cashier_name;

  /// No description provided for @order_type.
  ///
  /// In en, this message translates to:
  /// **'Order Type'**
  String get order_type;

  /// No description provided for @order_type_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Add, Remove, Manage Order Type'**
  String get order_type_subtitle;

  /// No description provided for @add_order_type.
  ///
  /// In en, this message translates to:
  /// **'Add Order Type'**
  String get add_order_type;

  /// No description provided for @edit_order_type.
  ///
  /// In en, this message translates to:
  /// **'Edit Order Type'**
  String get edit_order_type;

  /// No description provided for @delete_order_type.
  ///
  /// In en, this message translates to:
  /// **'Delete Order Type'**
  String get delete_order_type;

  /// No description provided for @order_type_name.
  ///
  /// In en, this message translates to:
  /// **'Order Type Name'**
  String get order_type_name;

  /// No description provided for @enter_order_type_name.
  ///
  /// In en, this message translates to:
  /// **'Enter order type name'**
  String get enter_order_type_name;

  /// No description provided for @order_type_info.
  ///
  /// In en, this message translates to:
  /// **'Order Type Info'**
  String get order_type_info;

  /// No description provided for @enter_order_type_info.
  ///
  /// In en, this message translates to:
  /// **'Enter order type info'**
  String get enter_order_type_info;

  /// No description provided for @order_type_surcharge.
  ///
  /// In en, this message translates to:
  /// **'Order Type Surcharge'**
  String get order_type_surcharge;

  /// No description provided for @enter_order_type_surcharge.
  ///
  /// In en, this message translates to:
  /// **'Enter order type surcharge'**
  String get enter_order_type_surcharge;

  /// No description provided for @add_order_type_success.
  ///
  /// In en, this message translates to:
  /// **'Success add order type!'**
  String get add_order_type_success;

  /// No description provided for @edit_order_type_success.
  ///
  /// In en, this message translates to:
  /// **'Success edit order type!'**
  String get edit_order_type_success;

  /// No description provided for @delete_order_type_success.
  ///
  /// In en, this message translates to:
  /// **'Success delete order type!'**
  String get delete_order_type_success;

  /// No description provided for @add_order_type_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to add order type!'**
  String get add_order_type_failure;

  /// No description provided for @edit_order_type_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit order type!'**
  String get edit_order_type_failure;

  /// No description provided for @delete_order_type_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete order type!'**
  String get delete_order_type_failure;

  /// No description provided for @delete_order_type_confirmation_title.
  ///
  /// In en, this message translates to:
  /// **'Delete this order type?'**
  String get delete_order_type_confirmation_title;

  /// No description provided for @delete_order_type_confirmation_subtitle.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent. Once deleted, this order type cannot be reactivated.'**
  String get delete_order_type_confirmation_subtitle;

  /// No description provided for @transaction_code.
  ///
  /// In en, this message translates to:
  /// **'Transaction Code'**
  String get transaction_code;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @tax_amount.
  ///
  /// In en, this message translates to:
  /// **'Tax Amount'**
  String get tax_amount;

  /// No description provided for @service_fee_amount.
  ///
  /// In en, this message translates to:
  /// **'Service Fee Amount'**
  String get service_fee_amount;

  /// No description provided for @surcharge_amount.
  ///
  /// In en, this message translates to:
  /// **'Surcharge Amount'**
  String get surcharge_amount;

  /// No description provided for @created_at.
  ///
  /// In en, this message translates to:
  /// **'Created At'**
  String get created_at;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @this_week.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get this_week;

  /// No description provided for @this_month.
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get this_month;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @filter_transaction.
  ///
  /// In en, this message translates to:
  /// **'Filter Transaction'**
  String get filter_transaction;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @search_transaction_code.
  ///
  /// In en, this message translates to:
  /// **'Enter transaction code'**
  String get search_transaction_code;

  /// No description provided for @date_range.
  ///
  /// In en, this message translates to:
  /// **'Date Range'**
  String get date_range;

  /// No description provided for @date_from.
  ///
  /// In en, this message translates to:
  /// **'Date From'**
  String get date_from;

  /// No description provided for @date_to.
  ///
  /// In en, this message translates to:
  /// **'Date To'**
  String get date_to;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @empty_order_type.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any Order Type yet!'**
  String get empty_order_type;

  /// No description provided for @empty_order_type_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create your first order type to start organizing your order!'**
  String get empty_order_type_subtitle;

  /// No description provided for @empty_product_category.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any Product Category yet!'**
  String get empty_product_category;

  /// No description provided for @empty_product_category_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create your first product category type to start organizing your product!'**
  String get empty_product_category_subtitle;

  /// No description provided for @empty_product.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any Product yet!'**
  String get empty_product;

  /// No description provided for @empty_product_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create your first product to start organizing your product!'**
  String get empty_product_subtitle;

  /// No description provided for @status_created.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get status_created;

  /// No description provided for @status_paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get status_paid;

  /// No description provided for @status_processed.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get status_processed;

  /// No description provided for @status_ready.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get status_ready;

  /// No description provided for @status_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get status_completed;

  /// No description provided for @status_cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get status_cancelled;

  /// No description provided for @status_group_ongoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get status_group_ongoing;

  /// No description provided for @status_group_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get status_group_completed;

  /// No description provided for @status_group_cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get status_group_cancelled;

  /// No description provided for @order_line.
  ///
  /// In en, this message translates to:
  /// **'Order Line'**
  String get order_line;

  /// No description provided for @empty_order_line.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any order yet!'**
  String get empty_order_line;

  /// No description provided for @empty_order_line_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create your first order to start adding revenue!'**
  String get empty_order_line_subtitle;

  /// No description provided for @update_order_status_success.
  ///
  /// In en, this message translates to:
  /// **'Success update order status'**
  String get update_order_status_success;

  /// No description provided for @update_order_status_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed update order status'**
  String get update_order_status_failed;

  /// No description provided for @cancel_order_confirmation_title.
  ///
  /// In en, this message translates to:
  /// **'Cancel this order?'**
  String get cancel_order_confirmation_title;

  /// No description provided for @cancel_order_confirmation_subtitle.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent. Once cancelled, this order cannot be reactivated.'**
  String get cancel_order_confirmation_subtitle;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @transaction_detail.
  ///
  /// In en, this message translates to:
  /// **'Transaction Detail'**
  String get transaction_detail;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @print.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// No description provided for @total_order.
  ///
  /// In en, this message translates to:
  /// **'Total Order'**
  String get total_order;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// No description provided for @see_chart.
  ///
  /// In en, this message translates to:
  /// **'See Chart'**
  String get see_chart;

  /// No description provided for @revenue_by_hour.
  ///
  /// In en, this message translates to:
  /// **'Revenue by hour'**
  String get revenue_by_hour;

  /// No description provided for @revenue_by_day.
  ///
  /// In en, this message translates to:
  /// **'Revenue by day'**
  String get revenue_by_day;

  /// No description provided for @popular_payment.
  ///
  /// In en, this message translates to:
  /// **'Popular payment method'**
  String get popular_payment;

  /// No description provided for @popular_order_type.
  ///
  /// In en, this message translates to:
  /// **'Popular order type'**
  String get popular_order_type;

  /// No description provided for @last_7_day.
  ///
  /// In en, this message translates to:
  /// **'Last 7 days'**
  String get last_7_day;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'id':
      return AppLocalizationsId();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

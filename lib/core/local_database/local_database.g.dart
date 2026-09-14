// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class $UserModelTable extends UserModel
    with TableInfo<$UserModelTable, UserModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passwordHashMeta = const VerificationMeta(
    'passwordHash',
  );
  @override
  late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>(
    'password_hash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    username,
    passwordHash,
    role,
    isActive,
    createdAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password_hash')) {
      context.handle(
        _passwordHashMeta,
        passwordHash.isAcceptableOrUnknown(
          data['password_hash']!,
          _passwordHashMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_passwordHashMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      username: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}username'],
      )!,
      passwordHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password_hash'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $UserModelTable createAlias(String alias) {
    return $UserModelTable(attachedDatabase, alias);
  }
}

class UserModelData extends DataClass implements Insertable<UserModelData> {
  final String id;
  final String username;
  final String passwordHash;
  final String role;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? deletedAt;
  const UserModelData({
    required this.id,
    required this.username,
    required this.passwordHash,
    required this.role,
    required this.isActive,
    required this.createdAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['username'] = Variable<String>(username);
    map['password_hash'] = Variable<String>(passwordHash);
    map['role'] = Variable<String>(role);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  UserModelCompanion toCompanion(bool nullToAbsent) {
    return UserModelCompanion(
      id: Value(id),
      username: Value(username),
      passwordHash: Value(passwordHash),
      role: Value(role),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory UserModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserModelData(
      id: serializer.fromJson<String>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      passwordHash: serializer.fromJson<String>(json['passwordHash']),
      role: serializer.fromJson<String>(json['role']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'username': serializer.toJson<String>(username),
      'passwordHash': serializer.toJson<String>(passwordHash),
      'role': serializer.toJson<String>(role),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  UserModelData copyWith({
    String? id,
    String? username,
    String? passwordHash,
    String? role,
    bool? isActive,
    DateTime? createdAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => UserModelData(
    id: id ?? this.id,
    username: username ?? this.username,
    passwordHash: passwordHash ?? this.passwordHash,
    role: role ?? this.role,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  UserModelData copyWithCompanion(UserModelCompanion data) {
    return UserModelData(
      id: data.id.present ? data.id.value : this.id,
      username: data.username.present ? data.username.value : this.username,
      passwordHash: data.passwordHash.present
          ? data.passwordHash.value
          : this.passwordHash,
      role: data.role.present ? data.role.value : this.role,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserModelData(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('role: $role, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    username,
    passwordHash,
    role,
    isActive,
    createdAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModelData &&
          other.id == this.id &&
          other.username == this.username &&
          other.passwordHash == this.passwordHash &&
          other.role == this.role &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.deletedAt == this.deletedAt);
}

class UserModelCompanion extends UpdateCompanion<UserModelData> {
  final Value<String> id;
  final Value<String> username;
  final Value<String> passwordHash;
  final Value<String> role;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const UserModelCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.role = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserModelCompanion.insert({
    required String id,
    required String username,
    required String passwordHash,
    required String role,
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       username = Value(username),
       passwordHash = Value(passwordHash),
       role = Value(role);
  static Insertable<UserModelData> custom({
    Expression<String>? id,
    Expression<String>? username,
    Expression<String>? passwordHash,
    Expression<String>? role,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (role != null) 'role': role,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserModelCompanion copyWith({
    Value<String>? id,
    Value<String>? username,
    Value<String>? passwordHash,
    Value<String>? role,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return UserModelCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      passwordHash: passwordHash ?? this.passwordHash,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserModelCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('role: $role, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AppConfigModelTable extends AppConfigModel
    with TableInfo<$AppConfigModelTable, AppConfigModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppConfigModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('string'),
  );
  static const VerificationMeta _updateAtMeta = const VerificationMeta(
    'updateAt',
  );
  @override
  late final GeneratedColumn<DateTime> updateAt = GeneratedColumn<DateTime>(
    'update_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value, type, updateAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_config_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<AppConfigModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    }
    if (data.containsKey('update_at')) {
      context.handle(
        _updateAtMeta,
        updateAt.isAcceptableOrUnknown(data['update_at']!, _updateAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  AppConfigModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppConfigModelData(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      updateAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}update_at'],
      )!,
    );
  }

  @override
  $AppConfigModelTable createAlias(String alias) {
    return $AppConfigModelTable(attachedDatabase, alias);
  }
}

class AppConfigModelData extends DataClass
    implements Insertable<AppConfigModelData> {
  final String key;
  final String value;
  final String type;
  final DateTime updateAt;
  const AppConfigModelData({
    required this.key,
    required this.value,
    required this.type,
    required this.updateAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    map['type'] = Variable<String>(type);
    map['update_at'] = Variable<DateTime>(updateAt);
    return map;
  }

  AppConfigModelCompanion toCompanion(bool nullToAbsent) {
    return AppConfigModelCompanion(
      key: Value(key),
      value: Value(value),
      type: Value(type),
      updateAt: Value(updateAt),
    );
  }

  factory AppConfigModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppConfigModelData(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
      type: serializer.fromJson<String>(json['type']),
      updateAt: serializer.fromJson<DateTime>(json['updateAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
      'type': serializer.toJson<String>(type),
      'updateAt': serializer.toJson<DateTime>(updateAt),
    };
  }

  AppConfigModelData copyWith({
    String? key,
    String? value,
    String? type,
    DateTime? updateAt,
  }) => AppConfigModelData(
    key: key ?? this.key,
    value: value ?? this.value,
    type: type ?? this.type,
    updateAt: updateAt ?? this.updateAt,
  );
  AppConfigModelData copyWithCompanion(AppConfigModelCompanion data) {
    return AppConfigModelData(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
      type: data.type.present ? data.type.value : this.type,
      updateAt: data.updateAt.present ? data.updateAt.value : this.updateAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppConfigModelData(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('updateAt: $updateAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value, type, updateAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppConfigModelData &&
          other.key == this.key &&
          other.value == this.value &&
          other.type == this.type &&
          other.updateAt == this.updateAt);
}

class AppConfigModelCompanion extends UpdateCompanion<AppConfigModelData> {
  final Value<String> key;
  final Value<String> value;
  final Value<String> type;
  final Value<DateTime> updateAt;
  final Value<int> rowid;
  const AppConfigModelCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.type = const Value.absent(),
    this.updateAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppConfigModelCompanion.insert({
    required String key,
    required String value,
    this.type = const Value.absent(),
    this.updateAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<AppConfigModelData> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<String>? type,
    Expression<DateTime>? updateAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (type != null) 'type': type,
      if (updateAt != null) 'update_at': updateAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppConfigModelCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<String>? type,
    Value<DateTime>? updateAt,
    Value<int>? rowid,
  }) {
    return AppConfigModelCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      type: type ?? this.type,
      updateAt: updateAt ?? this.updateAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (updateAt.present) {
      map['update_at'] = Variable<DateTime>(updateAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppConfigModelCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('updateAt: $updateAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderTypeModelTable extends OrderTypeModel
    with TableInfo<$OrderTypeModelTable, OrderTypeModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderTypeModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _infoMeta = const VerificationMeta('info');
  @override
  late final GeneratedColumn<String> info = GeneratedColumn<String>(
    'info',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _surchargeTypeMeta = const VerificationMeta(
    'surchargeType',
  );
  @override
  late final GeneratedColumn<String> surchargeType = GeneratedColumn<String>(
    'surcharge_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _surchargeValueMeta = const VerificationMeta(
    'surchargeValue',
  );
  @override
  late final GeneratedColumn<int> surchargeValue = GeneratedColumn<int>(
    'surcharge_value',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    info,
    surchargeType,
    surchargeValue,
    isActive,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_type_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<OrderTypeModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('info')) {
      context.handle(
        _infoMeta,
        info.isAcceptableOrUnknown(data['info']!, _infoMeta),
      );
    } else if (isInserting) {
      context.missing(_infoMeta);
    }
    if (data.containsKey('surcharge_type')) {
      context.handle(
        _surchargeTypeMeta,
        surchargeType.isAcceptableOrUnknown(
          data['surcharge_type']!,
          _surchargeTypeMeta,
        ),
      );
    }
    if (data.containsKey('surcharge_value')) {
      context.handle(
        _surchargeValueMeta,
        surchargeValue.isAcceptableOrUnknown(
          data['surcharge_value']!,
          _surchargeValueMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderTypeModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderTypeModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      info: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}info'],
      )!,
      surchargeType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}surcharge_type'],
      ),
      surchargeValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surcharge_value'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $OrderTypeModelTable createAlias(String alias) {
    return $OrderTypeModelTable(attachedDatabase, alias);
  }
}

class OrderTypeModelData extends DataClass
    implements Insertable<OrderTypeModelData> {
  final String id;
  final String name;
  final String info;
  final String? surchargeType;
  final int? surchargeValue;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const OrderTypeModelData({
    required this.id,
    required this.name,
    required this.info,
    this.surchargeType,
    this.surchargeValue,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['info'] = Variable<String>(info);
    if (!nullToAbsent || surchargeType != null) {
      map['surcharge_type'] = Variable<String>(surchargeType);
    }
    if (!nullToAbsent || surchargeValue != null) {
      map['surcharge_value'] = Variable<int>(surchargeValue);
    }
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  OrderTypeModelCompanion toCompanion(bool nullToAbsent) {
    return OrderTypeModelCompanion(
      id: Value(id),
      name: Value(name),
      info: Value(info),
      surchargeType: surchargeType == null && nullToAbsent
          ? const Value.absent()
          : Value(surchargeType),
      surchargeValue: surchargeValue == null && nullToAbsent
          ? const Value.absent()
          : Value(surchargeValue),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory OrderTypeModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderTypeModelData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      info: serializer.fromJson<String>(json['info']),
      surchargeType: serializer.fromJson<String?>(json['surchargeType']),
      surchargeValue: serializer.fromJson<int?>(json['surchargeValue']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'info': serializer.toJson<String>(info),
      'surchargeType': serializer.toJson<String?>(surchargeType),
      'surchargeValue': serializer.toJson<int?>(surchargeValue),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  OrderTypeModelData copyWith({
    String? id,
    String? name,
    String? info,
    Value<String?> surchargeType = const Value.absent(),
    Value<int?> surchargeValue = const Value.absent(),
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => OrderTypeModelData(
    id: id ?? this.id,
    name: name ?? this.name,
    info: info ?? this.info,
    surchargeType: surchargeType.present
        ? surchargeType.value
        : this.surchargeType,
    surchargeValue: surchargeValue.present
        ? surchargeValue.value
        : this.surchargeValue,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  OrderTypeModelData copyWithCompanion(OrderTypeModelCompanion data) {
    return OrderTypeModelData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      info: data.info.present ? data.info.value : this.info,
      surchargeType: data.surchargeType.present
          ? data.surchargeType.value
          : this.surchargeType,
      surchargeValue: data.surchargeValue.present
          ? data.surchargeValue.value
          : this.surchargeValue,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrderTypeModelData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('info: $info, ')
          ..write('surchargeType: $surchargeType, ')
          ..write('surchargeValue: $surchargeValue, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    info,
    surchargeType,
    surchargeValue,
    isActive,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderTypeModelData &&
          other.id == this.id &&
          other.name == this.name &&
          other.info == this.info &&
          other.surchargeType == this.surchargeType &&
          other.surchargeValue == this.surchargeValue &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class OrderTypeModelCompanion extends UpdateCompanion<OrderTypeModelData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> info;
  final Value<String?> surchargeType;
  final Value<int?> surchargeValue;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const OrderTypeModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.info = const Value.absent(),
    this.surchargeType = const Value.absent(),
    this.surchargeValue = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderTypeModelCompanion.insert({
    required String id,
    required String name,
    required String info,
    this.surchargeType = const Value.absent(),
    this.surchargeValue = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       info = Value(info);
  static Insertable<OrderTypeModelData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? info,
    Expression<String>? surchargeType,
    Expression<int>? surchargeValue,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (info != null) 'info': info,
      if (surchargeType != null) 'surcharge_type': surchargeType,
      if (surchargeValue != null) 'surcharge_value': surchargeValue,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderTypeModelCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? info,
    Value<String?>? surchargeType,
    Value<int?>? surchargeValue,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return OrderTypeModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      info: info ?? this.info,
      surchargeType: surchargeType ?? this.surchargeType,
      surchargeValue: surchargeValue ?? this.surchargeValue,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (info.present) {
      map['info'] = Variable<String>(info.value);
    }
    if (surchargeType.present) {
      map['surcharge_type'] = Variable<String>(surchargeType.value);
    }
    if (surchargeValue.present) {
      map['surcharge_value'] = Variable<int>(surchargeValue.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderTypeModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('info: $info, ')
          ..write('surchargeType: $surchargeType, ')
          ..write('surchargeValue: $surchargeValue, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductCategoryModelTable extends ProductCategoryModel
    with TableInfo<$ProductCategoryModelTable, ProductCategoryModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductCategoryModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    image,
    isActive,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_category_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductCategoryModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
        _imageMeta,
        image.isAcceptableOrUnknown(data['image']!, _imageMeta),
      );
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductCategoryModelData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductCategoryModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      image: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $ProductCategoryModelTable createAlias(String alias) {
    return $ProductCategoryModelTable(attachedDatabase, alias);
  }
}

class ProductCategoryModelData extends DataClass
    implements Insertable<ProductCategoryModelData> {
  final String id;
  final String name;
  final String image;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const ProductCategoryModelData({
    required this.id,
    required this.name,
    required this.image,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  ProductCategoryModelCompanion toCompanion(bool nullToAbsent) {
    return ProductCategoryModelCompanion(
      id: Value(id),
      name: Value(name),
      image: Value(image),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory ProductCategoryModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductCategoryModelData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  ProductCategoryModelData copyWith({
    String? id,
    String? name,
    String? image,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => ProductCategoryModelData(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  ProductCategoryModelData copyWithCompanion(
    ProductCategoryModelCompanion data,
  ) {
    return ProductCategoryModelData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      image: data.image.present ? data.image.value : this.image,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductCategoryModelData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, image, isActive, createdAt, updatedAt, deletedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductCategoryModelData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class ProductCategoryModelCompanion
    extends UpdateCompanion<ProductCategoryModelData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> image;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const ProductCategoryModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductCategoryModelCompanion.insert({
    required String id,
    required String name,
    required String image,
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       image = Value(image);
  static Insertable<ProductCategoryModelData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? image,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductCategoryModelCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? image,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return ProductCategoryModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductCategoryModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductModelTable extends ProductModel
    with TableInfo<$ProductModelTable, ProductModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    image,
    price,
    categoryId,
    isActive,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
        _imageMeta,
        image.isAcceptableOrUnknown(data['image']!, _imageMeta),
      );
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      image: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $ProductModelTable createAlias(String alias) {
    return $ProductModelTable(attachedDatabase, alias);
  }
}

class ProductModelData extends DataClass
    implements Insertable<ProductModelData> {
  final String id;
  final String name;
  final String image;
  final int price;
  final String categoryId;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const ProductModelData({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.categoryId,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    map['price'] = Variable<int>(price);
    map['category_id'] = Variable<String>(categoryId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  ProductModelCompanion toCompanion(bool nullToAbsent) {
    return ProductModelCompanion(
      id: Value(id),
      name: Value(name),
      image: Value(image),
      price: Value(price),
      categoryId: Value(categoryId),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory ProductModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductModelData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      price: serializer.fromJson<int>(json['price']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'price': serializer.toJson<int>(price),
      'categoryId': serializer.toJson<String>(categoryId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  ProductModelData copyWith({
    String? id,
    String? name,
    String? image,
    int? price,
    String? categoryId,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => ProductModelData(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    price: price ?? this.price,
    categoryId: categoryId ?? this.categoryId,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  ProductModelData copyWithCompanion(ProductModelCompanion data) {
    return ProductModelData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      image: data.image.present ? data.image.value : this.image,
      price: data.price.present ? data.price.value : this.price,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductModelData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('categoryId: $categoryId, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    image,
    price,
    categoryId,
    isActive,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductModelData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image &&
          other.price == this.price &&
          other.categoryId == this.categoryId &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class ProductModelCompanion extends UpdateCompanion<ProductModelData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> image;
  final Value<int> price;
  final Value<String> categoryId;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const ProductModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.price = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductModelCompanion.insert({
    required String id,
    required String name,
    required String image,
    required int price,
    required String categoryId,
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       image = Value(image),
       price = Value(price),
       categoryId = Value(categoryId);
  static Insertable<ProductModelData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? image,
    Expression<int>? price,
    Expression<String>? categoryId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (price != null) 'price': price,
      if (categoryId != null) 'category_id': categoryId,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductModelCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? image,
    Value<int>? price,
    Value<String>? categoryId,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return ProductModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      categoryId: categoryId ?? this.categoryId,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('categoryId: $categoryId, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TransactionModelTable extends TransactionModel
    with TableInfo<$TransactionModelTable, TransactionModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _transactionCodeMeta = const VerificationMeta(
    'transactionCode',
  );
  @override
  late final GeneratedColumn<String> transactionCode = GeneratedColumn<String>(
    'transaction_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cashierIdMeta = const VerificationMeta(
    'cashierId',
  );
  @override
  late final GeneratedColumn<String> cashierId = GeneratedColumn<String>(
    'cashier_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cashierNameSnapshotMeta =
      const VerificationMeta('cashierNameSnapshot');
  @override
  late final GeneratedColumn<String> cashierNameSnapshot =
      GeneratedColumn<String>(
        'cashier_name_snapshot',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _customerNameMeta = const VerificationMeta(
    'customerName',
  );
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
    'customer_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paymentMethodMeta = const VerificationMeta(
    'paymentMethod',
  );
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
    'payment_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _orderTypeIdMeta = const VerificationMeta(
    'orderTypeId',
  );
  @override
  late final GeneratedColumn<String> orderTypeId = GeneratedColumn<String>(
    'order_type_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _orderTypeNameSnapshotMeta =
      const VerificationMeta('orderTypeNameSnapshot');
  @override
  late final GeneratedColumn<String> orderTypeNameSnapshot =
      GeneratedColumn<String>(
        'order_type_name_snapshot',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _orderTypeInfoSnapshotMeta =
      const VerificationMeta('orderTypeInfoSnapshot');
  @override
  late final GeneratedColumn<String> orderTypeInfoSnapshot =
      GeneratedColumn<String>(
        'order_type_info_snapshot',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _surchargeTypeMeta = const VerificationMeta(
    'surchargeType',
  );
  @override
  late final GeneratedColumn<String> surchargeType = GeneratedColumn<String>(
    'surcharge_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _surchargeValueMeta = const VerificationMeta(
    'surchargeValue',
  );
  @override
  late final GeneratedColumn<int> surchargeValue = GeneratedColumn<int>(
    'surcharge_value',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _surchargeAmountMeta = const VerificationMeta(
    'surchargeAmount',
  );
  @override
  late final GeneratedColumn<int> surchargeAmount = GeneratedColumn<int>(
    'surcharge_amount',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _subtotalMeta = const VerificationMeta(
    'subtotal',
  );
  @override
  late final GeneratedColumn<int> subtotal = GeneratedColumn<int>(
    'subtotal',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<int> tax = GeneratedColumn<int>(
    'tax',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taxAmountMeta = const VerificationMeta(
    'taxAmount',
  );
  @override
  late final GeneratedColumn<int> taxAmount = GeneratedColumn<int>(
    'tax_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _serviceMeta = const VerificationMeta(
    'service',
  );
  @override
  late final GeneratedColumn<int> service = GeneratedColumn<int>(
    'service',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _serviceAmountMeta = const VerificationMeta(
    'serviceAmount',
  );
  @override
  late final GeneratedColumn<int> serviceAmount = GeneratedColumn<int>(
    'service_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalAmountMeta = const VerificationMeta(
    'totalAmount',
  );
  @override
  late final GeneratedColumn<int> totalAmount = GeneratedColumn<int>(
    'total_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    transactionCode,
    cashierId,
    cashierNameSnapshot,
    customerName,
    paymentMethod,
    orderTypeId,
    orderTypeNameSnapshot,
    orderTypeInfoSnapshot,
    surchargeType,
    surchargeValue,
    surchargeAmount,
    subtotal,
    tax,
    taxAmount,
    service,
    serviceAmount,
    totalAmount,
    status,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<TransactionModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('transaction_code')) {
      context.handle(
        _transactionCodeMeta,
        transactionCode.isAcceptableOrUnknown(
          data['transaction_code']!,
          _transactionCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_transactionCodeMeta);
    }
    if (data.containsKey('cashier_id')) {
      context.handle(
        _cashierIdMeta,
        cashierId.isAcceptableOrUnknown(data['cashier_id']!, _cashierIdMeta),
      );
    } else if (isInserting) {
      context.missing(_cashierIdMeta);
    }
    if (data.containsKey('cashier_name_snapshot')) {
      context.handle(
        _cashierNameSnapshotMeta,
        cashierNameSnapshot.isAcceptableOrUnknown(
          data['cashier_name_snapshot']!,
          _cashierNameSnapshotMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cashierNameSnapshotMeta);
    }
    if (data.containsKey('customer_name')) {
      context.handle(
        _customerNameMeta,
        customerName.isAcceptableOrUnknown(
          data['customer_name']!,
          _customerNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_customerNameMeta);
    }
    if (data.containsKey('payment_method')) {
      context.handle(
        _paymentMethodMeta,
        paymentMethod.isAcceptableOrUnknown(
          data['payment_method']!,
          _paymentMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_paymentMethodMeta);
    }
    if (data.containsKey('order_type_id')) {
      context.handle(
        _orderTypeIdMeta,
        orderTypeId.isAcceptableOrUnknown(
          data['order_type_id']!,
          _orderTypeIdMeta,
        ),
      );
    }
    if (data.containsKey('order_type_name_snapshot')) {
      context.handle(
        _orderTypeNameSnapshotMeta,
        orderTypeNameSnapshot.isAcceptableOrUnknown(
          data['order_type_name_snapshot']!,
          _orderTypeNameSnapshotMeta,
        ),
      );
    }
    if (data.containsKey('order_type_info_snapshot')) {
      context.handle(
        _orderTypeInfoSnapshotMeta,
        orderTypeInfoSnapshot.isAcceptableOrUnknown(
          data['order_type_info_snapshot']!,
          _orderTypeInfoSnapshotMeta,
        ),
      );
    }
    if (data.containsKey('surcharge_type')) {
      context.handle(
        _surchargeTypeMeta,
        surchargeType.isAcceptableOrUnknown(
          data['surcharge_type']!,
          _surchargeTypeMeta,
        ),
      );
    }
    if (data.containsKey('surcharge_value')) {
      context.handle(
        _surchargeValueMeta,
        surchargeValue.isAcceptableOrUnknown(
          data['surcharge_value']!,
          _surchargeValueMeta,
        ),
      );
    }
    if (data.containsKey('surcharge_amount')) {
      context.handle(
        _surchargeAmountMeta,
        surchargeAmount.isAcceptableOrUnknown(
          data['surcharge_amount']!,
          _surchargeAmountMeta,
        ),
      );
    }
    if (data.containsKey('subtotal')) {
      context.handle(
        _subtotalMeta,
        subtotal.isAcceptableOrUnknown(data['subtotal']!, _subtotalMeta),
      );
    } else if (isInserting) {
      context.missing(_subtotalMeta);
    }
    if (data.containsKey('tax')) {
      context.handle(
        _taxMeta,
        tax.isAcceptableOrUnknown(data['tax']!, _taxMeta),
      );
    } else if (isInserting) {
      context.missing(_taxMeta);
    }
    if (data.containsKey('tax_amount')) {
      context.handle(
        _taxAmountMeta,
        taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta),
      );
    } else if (isInserting) {
      context.missing(_taxAmountMeta);
    }
    if (data.containsKey('service')) {
      context.handle(
        _serviceMeta,
        service.isAcceptableOrUnknown(data['service']!, _serviceMeta),
      );
    } else if (isInserting) {
      context.missing(_serviceMeta);
    }
    if (data.containsKey('service_amount')) {
      context.handle(
        _serviceAmountMeta,
        serviceAmount.isAcceptableOrUnknown(
          data['service_amount']!,
          _serviceAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_serviceAmountMeta);
    }
    if (data.containsKey('total_amount')) {
      context.handle(
        _totalAmountMeta,
        totalAmount.isAcceptableOrUnknown(
          data['total_amount']!,
          _totalAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalAmountMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      transactionCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transaction_code'],
      )!,
      cashierId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cashier_id'],
      )!,
      cashierNameSnapshot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cashier_name_snapshot'],
      )!,
      customerName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_name'],
      )!,
      paymentMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_method'],
      )!,
      orderTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}order_type_id'],
      ),
      orderTypeNameSnapshot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}order_type_name_snapshot'],
      ),
      orderTypeInfoSnapshot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}order_type_info_snapshot'],
      ),
      surchargeType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}surcharge_type'],
      ),
      surchargeValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surcharge_value'],
      ),
      surchargeAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}surcharge_amount'],
      ),
      subtotal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}subtotal'],
      )!,
      tax: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tax'],
      )!,
      taxAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tax_amount'],
      )!,
      service: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}service'],
      )!,
      serviceAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}service_amount'],
      )!,
      totalAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_amount'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $TransactionModelTable createAlias(String alias) {
    return $TransactionModelTable(attachedDatabase, alias);
  }
}

class TransactionModelData extends DataClass
    implements Insertable<TransactionModelData> {
  final String id;
  final String transactionCode;
  final String cashierId;
  final String cashierNameSnapshot;
  final String customerName;
  final String paymentMethod;
  final String? orderTypeId;
  final String? orderTypeNameSnapshot;
  final String? orderTypeInfoSnapshot;
  final String? surchargeType;
  final int? surchargeValue;
  final int? surchargeAmount;
  final int subtotal;
  final int tax;
  final int taxAmount;
  final int service;
  final int serviceAmount;
  final int totalAmount;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const TransactionModelData({
    required this.id,
    required this.transactionCode,
    required this.cashierId,
    required this.cashierNameSnapshot,
    required this.customerName,
    required this.paymentMethod,
    this.orderTypeId,
    this.orderTypeNameSnapshot,
    this.orderTypeInfoSnapshot,
    this.surchargeType,
    this.surchargeValue,
    this.surchargeAmount,
    required this.subtotal,
    required this.tax,
    required this.taxAmount,
    required this.service,
    required this.serviceAmount,
    required this.totalAmount,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['transaction_code'] = Variable<String>(transactionCode);
    map['cashier_id'] = Variable<String>(cashierId);
    map['cashier_name_snapshot'] = Variable<String>(cashierNameSnapshot);
    map['customer_name'] = Variable<String>(customerName);
    map['payment_method'] = Variable<String>(paymentMethod);
    if (!nullToAbsent || orderTypeId != null) {
      map['order_type_id'] = Variable<String>(orderTypeId);
    }
    if (!nullToAbsent || orderTypeNameSnapshot != null) {
      map['order_type_name_snapshot'] = Variable<String>(orderTypeNameSnapshot);
    }
    if (!nullToAbsent || orderTypeInfoSnapshot != null) {
      map['order_type_info_snapshot'] = Variable<String>(orderTypeInfoSnapshot);
    }
    if (!nullToAbsent || surchargeType != null) {
      map['surcharge_type'] = Variable<String>(surchargeType);
    }
    if (!nullToAbsent || surchargeValue != null) {
      map['surcharge_value'] = Variable<int>(surchargeValue);
    }
    if (!nullToAbsent || surchargeAmount != null) {
      map['surcharge_amount'] = Variable<int>(surchargeAmount);
    }
    map['subtotal'] = Variable<int>(subtotal);
    map['tax'] = Variable<int>(tax);
    map['tax_amount'] = Variable<int>(taxAmount);
    map['service'] = Variable<int>(service);
    map['service_amount'] = Variable<int>(serviceAmount);
    map['total_amount'] = Variable<int>(totalAmount);
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  TransactionModelCompanion toCompanion(bool nullToAbsent) {
    return TransactionModelCompanion(
      id: Value(id),
      transactionCode: Value(transactionCode),
      cashierId: Value(cashierId),
      cashierNameSnapshot: Value(cashierNameSnapshot),
      customerName: Value(customerName),
      paymentMethod: Value(paymentMethod),
      orderTypeId: orderTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(orderTypeId),
      orderTypeNameSnapshot: orderTypeNameSnapshot == null && nullToAbsent
          ? const Value.absent()
          : Value(orderTypeNameSnapshot),
      orderTypeInfoSnapshot: orderTypeInfoSnapshot == null && nullToAbsent
          ? const Value.absent()
          : Value(orderTypeInfoSnapshot),
      surchargeType: surchargeType == null && nullToAbsent
          ? const Value.absent()
          : Value(surchargeType),
      surchargeValue: surchargeValue == null && nullToAbsent
          ? const Value.absent()
          : Value(surchargeValue),
      surchargeAmount: surchargeAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(surchargeAmount),
      subtotal: Value(subtotal),
      tax: Value(tax),
      taxAmount: Value(taxAmount),
      service: Value(service),
      serviceAmount: Value(serviceAmount),
      totalAmount: Value(totalAmount),
      status: Value(status),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory TransactionModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionModelData(
      id: serializer.fromJson<String>(json['id']),
      transactionCode: serializer.fromJson<String>(json['transactionCode']),
      cashierId: serializer.fromJson<String>(json['cashierId']),
      cashierNameSnapshot: serializer.fromJson<String>(
        json['cashierNameSnapshot'],
      ),
      customerName: serializer.fromJson<String>(json['customerName']),
      paymentMethod: serializer.fromJson<String>(json['paymentMethod']),
      orderTypeId: serializer.fromJson<String?>(json['orderTypeId']),
      orderTypeNameSnapshot: serializer.fromJson<String?>(
        json['orderTypeNameSnapshot'],
      ),
      orderTypeInfoSnapshot: serializer.fromJson<String?>(
        json['orderTypeInfoSnapshot'],
      ),
      surchargeType: serializer.fromJson<String?>(json['surchargeType']),
      surchargeValue: serializer.fromJson<int?>(json['surchargeValue']),
      surchargeAmount: serializer.fromJson<int?>(json['surchargeAmount']),
      subtotal: serializer.fromJson<int>(json['subtotal']),
      tax: serializer.fromJson<int>(json['tax']),
      taxAmount: serializer.fromJson<int>(json['taxAmount']),
      service: serializer.fromJson<int>(json['service']),
      serviceAmount: serializer.fromJson<int>(json['serviceAmount']),
      totalAmount: serializer.fromJson<int>(json['totalAmount']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'transactionCode': serializer.toJson<String>(transactionCode),
      'cashierId': serializer.toJson<String>(cashierId),
      'cashierNameSnapshot': serializer.toJson<String>(cashierNameSnapshot),
      'customerName': serializer.toJson<String>(customerName),
      'paymentMethod': serializer.toJson<String>(paymentMethod),
      'orderTypeId': serializer.toJson<String?>(orderTypeId),
      'orderTypeNameSnapshot': serializer.toJson<String?>(
        orderTypeNameSnapshot,
      ),
      'orderTypeInfoSnapshot': serializer.toJson<String?>(
        orderTypeInfoSnapshot,
      ),
      'surchargeType': serializer.toJson<String?>(surchargeType),
      'surchargeValue': serializer.toJson<int?>(surchargeValue),
      'surchargeAmount': serializer.toJson<int?>(surchargeAmount),
      'subtotal': serializer.toJson<int>(subtotal),
      'tax': serializer.toJson<int>(tax),
      'taxAmount': serializer.toJson<int>(taxAmount),
      'service': serializer.toJson<int>(service),
      'serviceAmount': serializer.toJson<int>(serviceAmount),
      'totalAmount': serializer.toJson<int>(totalAmount),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  TransactionModelData copyWith({
    String? id,
    String? transactionCode,
    String? cashierId,
    String? cashierNameSnapshot,
    String? customerName,
    String? paymentMethod,
    Value<String?> orderTypeId = const Value.absent(),
    Value<String?> orderTypeNameSnapshot = const Value.absent(),
    Value<String?> orderTypeInfoSnapshot = const Value.absent(),
    Value<String?> surchargeType = const Value.absent(),
    Value<int?> surchargeValue = const Value.absent(),
    Value<int?> surchargeAmount = const Value.absent(),
    int? subtotal,
    int? tax,
    int? taxAmount,
    int? service,
    int? serviceAmount,
    int? totalAmount,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => TransactionModelData(
    id: id ?? this.id,
    transactionCode: transactionCode ?? this.transactionCode,
    cashierId: cashierId ?? this.cashierId,
    cashierNameSnapshot: cashierNameSnapshot ?? this.cashierNameSnapshot,
    customerName: customerName ?? this.customerName,
    paymentMethod: paymentMethod ?? this.paymentMethod,
    orderTypeId: orderTypeId.present ? orderTypeId.value : this.orderTypeId,
    orderTypeNameSnapshot: orderTypeNameSnapshot.present
        ? orderTypeNameSnapshot.value
        : this.orderTypeNameSnapshot,
    orderTypeInfoSnapshot: orderTypeInfoSnapshot.present
        ? orderTypeInfoSnapshot.value
        : this.orderTypeInfoSnapshot,
    surchargeType: surchargeType.present
        ? surchargeType.value
        : this.surchargeType,
    surchargeValue: surchargeValue.present
        ? surchargeValue.value
        : this.surchargeValue,
    surchargeAmount: surchargeAmount.present
        ? surchargeAmount.value
        : this.surchargeAmount,
    subtotal: subtotal ?? this.subtotal,
    tax: tax ?? this.tax,
    taxAmount: taxAmount ?? this.taxAmount,
    service: service ?? this.service,
    serviceAmount: serviceAmount ?? this.serviceAmount,
    totalAmount: totalAmount ?? this.totalAmount,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  TransactionModelData copyWithCompanion(TransactionModelCompanion data) {
    return TransactionModelData(
      id: data.id.present ? data.id.value : this.id,
      transactionCode: data.transactionCode.present
          ? data.transactionCode.value
          : this.transactionCode,
      cashierId: data.cashierId.present ? data.cashierId.value : this.cashierId,
      cashierNameSnapshot: data.cashierNameSnapshot.present
          ? data.cashierNameSnapshot.value
          : this.cashierNameSnapshot,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      orderTypeId: data.orderTypeId.present
          ? data.orderTypeId.value
          : this.orderTypeId,
      orderTypeNameSnapshot: data.orderTypeNameSnapshot.present
          ? data.orderTypeNameSnapshot.value
          : this.orderTypeNameSnapshot,
      orderTypeInfoSnapshot: data.orderTypeInfoSnapshot.present
          ? data.orderTypeInfoSnapshot.value
          : this.orderTypeInfoSnapshot,
      surchargeType: data.surchargeType.present
          ? data.surchargeType.value
          : this.surchargeType,
      surchargeValue: data.surchargeValue.present
          ? data.surchargeValue.value
          : this.surchargeValue,
      surchargeAmount: data.surchargeAmount.present
          ? data.surchargeAmount.value
          : this.surchargeAmount,
      subtotal: data.subtotal.present ? data.subtotal.value : this.subtotal,
      tax: data.tax.present ? data.tax.value : this.tax,
      taxAmount: data.taxAmount.present ? data.taxAmount.value : this.taxAmount,
      service: data.service.present ? data.service.value : this.service,
      serviceAmount: data.serviceAmount.present
          ? data.serviceAmount.value
          : this.serviceAmount,
      totalAmount: data.totalAmount.present
          ? data.totalAmount.value
          : this.totalAmount,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionModelData(')
          ..write('id: $id, ')
          ..write('transactionCode: $transactionCode, ')
          ..write('cashierId: $cashierId, ')
          ..write('cashierNameSnapshot: $cashierNameSnapshot, ')
          ..write('customerName: $customerName, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('orderTypeId: $orderTypeId, ')
          ..write('orderTypeNameSnapshot: $orderTypeNameSnapshot, ')
          ..write('orderTypeInfoSnapshot: $orderTypeInfoSnapshot, ')
          ..write('surchargeType: $surchargeType, ')
          ..write('surchargeValue: $surchargeValue, ')
          ..write('surchargeAmount: $surchargeAmount, ')
          ..write('subtotal: $subtotal, ')
          ..write('tax: $tax, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('service: $service, ')
          ..write('serviceAmount: $serviceAmount, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    transactionCode,
    cashierId,
    cashierNameSnapshot,
    customerName,
    paymentMethod,
    orderTypeId,
    orderTypeNameSnapshot,
    orderTypeInfoSnapshot,
    surchargeType,
    surchargeValue,
    surchargeAmount,
    subtotal,
    tax,
    taxAmount,
    service,
    serviceAmount,
    totalAmount,
    status,
    createdAt,
    updatedAt,
    deletedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionModelData &&
          other.id == this.id &&
          other.transactionCode == this.transactionCode &&
          other.cashierId == this.cashierId &&
          other.cashierNameSnapshot == this.cashierNameSnapshot &&
          other.customerName == this.customerName &&
          other.paymentMethod == this.paymentMethod &&
          other.orderTypeId == this.orderTypeId &&
          other.orderTypeNameSnapshot == this.orderTypeNameSnapshot &&
          other.orderTypeInfoSnapshot == this.orderTypeInfoSnapshot &&
          other.surchargeType == this.surchargeType &&
          other.surchargeValue == this.surchargeValue &&
          other.surchargeAmount == this.surchargeAmount &&
          other.subtotal == this.subtotal &&
          other.tax == this.tax &&
          other.taxAmount == this.taxAmount &&
          other.service == this.service &&
          other.serviceAmount == this.serviceAmount &&
          other.totalAmount == this.totalAmount &&
          other.status == this.status &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class TransactionModelCompanion extends UpdateCompanion<TransactionModelData> {
  final Value<String> id;
  final Value<String> transactionCode;
  final Value<String> cashierId;
  final Value<String> cashierNameSnapshot;
  final Value<String> customerName;
  final Value<String> paymentMethod;
  final Value<String?> orderTypeId;
  final Value<String?> orderTypeNameSnapshot;
  final Value<String?> orderTypeInfoSnapshot;
  final Value<String?> surchargeType;
  final Value<int?> surchargeValue;
  final Value<int?> surchargeAmount;
  final Value<int> subtotal;
  final Value<int> tax;
  final Value<int> taxAmount;
  final Value<int> service;
  final Value<int> serviceAmount;
  final Value<int> totalAmount;
  final Value<String> status;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const TransactionModelCompanion({
    this.id = const Value.absent(),
    this.transactionCode = const Value.absent(),
    this.cashierId = const Value.absent(),
    this.cashierNameSnapshot = const Value.absent(),
    this.customerName = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.orderTypeId = const Value.absent(),
    this.orderTypeNameSnapshot = const Value.absent(),
    this.orderTypeInfoSnapshot = const Value.absent(),
    this.surchargeType = const Value.absent(),
    this.surchargeValue = const Value.absent(),
    this.surchargeAmount = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.tax = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.service = const Value.absent(),
    this.serviceAmount = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TransactionModelCompanion.insert({
    required String id,
    required String transactionCode,
    required String cashierId,
    required String cashierNameSnapshot,
    required String customerName,
    required String paymentMethod,
    this.orderTypeId = const Value.absent(),
    this.orderTypeNameSnapshot = const Value.absent(),
    this.orderTypeInfoSnapshot = const Value.absent(),
    this.surchargeType = const Value.absent(),
    this.surchargeValue = const Value.absent(),
    this.surchargeAmount = const Value.absent(),
    required int subtotal,
    required int tax,
    required int taxAmount,
    required int service,
    required int serviceAmount,
    required int totalAmount,
    required String status,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       transactionCode = Value(transactionCode),
       cashierId = Value(cashierId),
       cashierNameSnapshot = Value(cashierNameSnapshot),
       customerName = Value(customerName),
       paymentMethod = Value(paymentMethod),
       subtotal = Value(subtotal),
       tax = Value(tax),
       taxAmount = Value(taxAmount),
       service = Value(service),
       serviceAmount = Value(serviceAmount),
       totalAmount = Value(totalAmount),
       status = Value(status);
  static Insertable<TransactionModelData> custom({
    Expression<String>? id,
    Expression<String>? transactionCode,
    Expression<String>? cashierId,
    Expression<String>? cashierNameSnapshot,
    Expression<String>? customerName,
    Expression<String>? paymentMethod,
    Expression<String>? orderTypeId,
    Expression<String>? orderTypeNameSnapshot,
    Expression<String>? orderTypeInfoSnapshot,
    Expression<String>? surchargeType,
    Expression<int>? surchargeValue,
    Expression<int>? surchargeAmount,
    Expression<int>? subtotal,
    Expression<int>? tax,
    Expression<int>? taxAmount,
    Expression<int>? service,
    Expression<int>? serviceAmount,
    Expression<int>? totalAmount,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (transactionCode != null) 'transaction_code': transactionCode,
      if (cashierId != null) 'cashier_id': cashierId,
      if (cashierNameSnapshot != null)
        'cashier_name_snapshot': cashierNameSnapshot,
      if (customerName != null) 'customer_name': customerName,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (orderTypeId != null) 'order_type_id': orderTypeId,
      if (orderTypeNameSnapshot != null)
        'order_type_name_snapshot': orderTypeNameSnapshot,
      if (orderTypeInfoSnapshot != null)
        'order_type_info_snapshot': orderTypeInfoSnapshot,
      if (surchargeType != null) 'surcharge_type': surchargeType,
      if (surchargeValue != null) 'surcharge_value': surchargeValue,
      if (surchargeAmount != null) 'surcharge_amount': surchargeAmount,
      if (subtotal != null) 'subtotal': subtotal,
      if (tax != null) 'tax': tax,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (service != null) 'service': service,
      if (serviceAmount != null) 'service_amount': serviceAmount,
      if (totalAmount != null) 'total_amount': totalAmount,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TransactionModelCompanion copyWith({
    Value<String>? id,
    Value<String>? transactionCode,
    Value<String>? cashierId,
    Value<String>? cashierNameSnapshot,
    Value<String>? customerName,
    Value<String>? paymentMethod,
    Value<String?>? orderTypeId,
    Value<String?>? orderTypeNameSnapshot,
    Value<String?>? orderTypeInfoSnapshot,
    Value<String?>? surchargeType,
    Value<int?>? surchargeValue,
    Value<int?>? surchargeAmount,
    Value<int>? subtotal,
    Value<int>? tax,
    Value<int>? taxAmount,
    Value<int>? service,
    Value<int>? serviceAmount,
    Value<int>? totalAmount,
    Value<String>? status,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return TransactionModelCompanion(
      id: id ?? this.id,
      transactionCode: transactionCode ?? this.transactionCode,
      cashierId: cashierId ?? this.cashierId,
      cashierNameSnapshot: cashierNameSnapshot ?? this.cashierNameSnapshot,
      customerName: customerName ?? this.customerName,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      orderTypeId: orderTypeId ?? this.orderTypeId,
      orderTypeNameSnapshot:
          orderTypeNameSnapshot ?? this.orderTypeNameSnapshot,
      orderTypeInfoSnapshot:
          orderTypeInfoSnapshot ?? this.orderTypeInfoSnapshot,
      surchargeType: surchargeType ?? this.surchargeType,
      surchargeValue: surchargeValue ?? this.surchargeValue,
      surchargeAmount: surchargeAmount ?? this.surchargeAmount,
      subtotal: subtotal ?? this.subtotal,
      tax: tax ?? this.tax,
      taxAmount: taxAmount ?? this.taxAmount,
      service: service ?? this.service,
      serviceAmount: serviceAmount ?? this.serviceAmount,
      totalAmount: totalAmount ?? this.totalAmount,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (transactionCode.present) {
      map['transaction_code'] = Variable<String>(transactionCode.value);
    }
    if (cashierId.present) {
      map['cashier_id'] = Variable<String>(cashierId.value);
    }
    if (cashierNameSnapshot.present) {
      map['cashier_name_snapshot'] = Variable<String>(
        cashierNameSnapshot.value,
      );
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String>(customerName.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (orderTypeId.present) {
      map['order_type_id'] = Variable<String>(orderTypeId.value);
    }
    if (orderTypeNameSnapshot.present) {
      map['order_type_name_snapshot'] = Variable<String>(
        orderTypeNameSnapshot.value,
      );
    }
    if (orderTypeInfoSnapshot.present) {
      map['order_type_info_snapshot'] = Variable<String>(
        orderTypeInfoSnapshot.value,
      );
    }
    if (surchargeType.present) {
      map['surcharge_type'] = Variable<String>(surchargeType.value);
    }
    if (surchargeValue.present) {
      map['surcharge_value'] = Variable<int>(surchargeValue.value);
    }
    if (surchargeAmount.present) {
      map['surcharge_amount'] = Variable<int>(surchargeAmount.value);
    }
    if (subtotal.present) {
      map['subtotal'] = Variable<int>(subtotal.value);
    }
    if (tax.present) {
      map['tax'] = Variable<int>(tax.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<int>(taxAmount.value);
    }
    if (service.present) {
      map['service'] = Variable<int>(service.value);
    }
    if (serviceAmount.present) {
      map['service_amount'] = Variable<int>(serviceAmount.value);
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<int>(totalAmount.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionModelCompanion(')
          ..write('id: $id, ')
          ..write('transactionCode: $transactionCode, ')
          ..write('cashierId: $cashierId, ')
          ..write('cashierNameSnapshot: $cashierNameSnapshot, ')
          ..write('customerName: $customerName, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('orderTypeId: $orderTypeId, ')
          ..write('orderTypeNameSnapshot: $orderTypeNameSnapshot, ')
          ..write('orderTypeInfoSnapshot: $orderTypeInfoSnapshot, ')
          ..write('surchargeType: $surchargeType, ')
          ..write('surchargeValue: $surchargeValue, ')
          ..write('surchargeAmount: $surchargeAmount, ')
          ..write('subtotal: $subtotal, ')
          ..write('tax: $tax, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('service: $service, ')
          ..write('serviceAmount: $serviceAmount, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TransactionItemModelTable extends TransactionItemModel
    with TableInfo<$TransactionItemModelTable, TransactionItemModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionItemModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _transactionIdMeta = const VerificationMeta(
    'transactionId',
  );
  @override
  late final GeneratedColumn<String> transactionId = GeneratedColumn<String>(
    'transaction_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productNameSnapshotMeta =
      const VerificationMeta('productNameSnapshot');
  @override
  late final GeneratedColumn<String> productNameSnapshot =
      GeneratedColumn<String>(
        'product_name_snapshot',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _categoryNameSnapshotMeta =
      const VerificationMeta('categoryNameSnapshot');
  @override
  late final GeneratedColumn<String> categoryNameSnapshot =
      GeneratedColumn<String>(
        'category_name_snapshot',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _imageSnapshotMeta = const VerificationMeta(
    'imageSnapshot',
  );
  @override
  late final GeneratedColumn<String> imageSnapshot = GeneratedColumn<String>(
    'image_snapshot',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _priceSnapshotMeta = const VerificationMeta(
    'priceSnapshot',
  );
  @override
  late final GeneratedColumn<int> priceSnapshot = GeneratedColumn<int>(
    'price_snapshot',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalPriceMeta = const VerificationMeta(
    'totalPrice',
  );
  @override
  late final GeneratedColumn<int> totalPrice = GeneratedColumn<int>(
    'total_price',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDate,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    transactionId,
    productId,
    productNameSnapshot,
    categoryNameSnapshot,
    imageSnapshot,
    priceSnapshot,
    quantity,
    totalPrice,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_item_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<TransactionItemModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('transaction_id')) {
      context.handle(
        _transactionIdMeta,
        transactionId.isAcceptableOrUnknown(
          data['transaction_id']!,
          _transactionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_transactionIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('product_name_snapshot')) {
      context.handle(
        _productNameSnapshotMeta,
        productNameSnapshot.isAcceptableOrUnknown(
          data['product_name_snapshot']!,
          _productNameSnapshotMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_productNameSnapshotMeta);
    }
    if (data.containsKey('category_name_snapshot')) {
      context.handle(
        _categoryNameSnapshotMeta,
        categoryNameSnapshot.isAcceptableOrUnknown(
          data['category_name_snapshot']!,
          _categoryNameSnapshotMeta,
        ),
      );
    }
    if (data.containsKey('image_snapshot')) {
      context.handle(
        _imageSnapshotMeta,
        imageSnapshot.isAcceptableOrUnknown(
          data['image_snapshot']!,
          _imageSnapshotMeta,
        ),
      );
    }
    if (data.containsKey('price_snapshot')) {
      context.handle(
        _priceSnapshotMeta,
        priceSnapshot.isAcceptableOrUnknown(
          data['price_snapshot']!,
          _priceSnapshotMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_priceSnapshotMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
        _totalPriceMeta,
        totalPrice.isAcceptableOrUnknown(data['total_price']!, _totalPriceMeta),
      );
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionItemModelData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionItemModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      transactionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transaction_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      productNameSnapshot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_name_snapshot'],
      )!,
      categoryNameSnapshot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category_name_snapshot'],
      ),
      imageSnapshot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_snapshot'],
      ),
      priceSnapshot: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price_snapshot'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      totalPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_price'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $TransactionItemModelTable createAlias(String alias) {
    return $TransactionItemModelTable(attachedDatabase, alias);
  }
}

class TransactionItemModelData extends DataClass
    implements Insertable<TransactionItemModelData> {
  final String id;
  final String transactionId;
  final String productId;
  final String productNameSnapshot;
  final String? categoryNameSnapshot;
  final String? imageSnapshot;
  final int priceSnapshot;
  final int quantity;
  final int totalPrice;
  final DateTime createdAt;
  const TransactionItemModelData({
    required this.id,
    required this.transactionId,
    required this.productId,
    required this.productNameSnapshot,
    this.categoryNameSnapshot,
    this.imageSnapshot,
    required this.priceSnapshot,
    required this.quantity,
    required this.totalPrice,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['transaction_id'] = Variable<String>(transactionId);
    map['product_id'] = Variable<String>(productId);
    map['product_name_snapshot'] = Variable<String>(productNameSnapshot);
    if (!nullToAbsent || categoryNameSnapshot != null) {
      map['category_name_snapshot'] = Variable<String>(categoryNameSnapshot);
    }
    if (!nullToAbsent || imageSnapshot != null) {
      map['image_snapshot'] = Variable<String>(imageSnapshot);
    }
    map['price_snapshot'] = Variable<int>(priceSnapshot);
    map['quantity'] = Variable<int>(quantity);
    map['total_price'] = Variable<int>(totalPrice);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TransactionItemModelCompanion toCompanion(bool nullToAbsent) {
    return TransactionItemModelCompanion(
      id: Value(id),
      transactionId: Value(transactionId),
      productId: Value(productId),
      productNameSnapshot: Value(productNameSnapshot),
      categoryNameSnapshot: categoryNameSnapshot == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryNameSnapshot),
      imageSnapshot: imageSnapshot == null && nullToAbsent
          ? const Value.absent()
          : Value(imageSnapshot),
      priceSnapshot: Value(priceSnapshot),
      quantity: Value(quantity),
      totalPrice: Value(totalPrice),
      createdAt: Value(createdAt),
    );
  }

  factory TransactionItemModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionItemModelData(
      id: serializer.fromJson<String>(json['id']),
      transactionId: serializer.fromJson<String>(json['transactionId']),
      productId: serializer.fromJson<String>(json['productId']),
      productNameSnapshot: serializer.fromJson<String>(
        json['productNameSnapshot'],
      ),
      categoryNameSnapshot: serializer.fromJson<String?>(
        json['categoryNameSnapshot'],
      ),
      imageSnapshot: serializer.fromJson<String?>(json['imageSnapshot']),
      priceSnapshot: serializer.fromJson<int>(json['priceSnapshot']),
      quantity: serializer.fromJson<int>(json['quantity']),
      totalPrice: serializer.fromJson<int>(json['totalPrice']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'transactionId': serializer.toJson<String>(transactionId),
      'productId': serializer.toJson<String>(productId),
      'productNameSnapshot': serializer.toJson<String>(productNameSnapshot),
      'categoryNameSnapshot': serializer.toJson<String?>(categoryNameSnapshot),
      'imageSnapshot': serializer.toJson<String?>(imageSnapshot),
      'priceSnapshot': serializer.toJson<int>(priceSnapshot),
      'quantity': serializer.toJson<int>(quantity),
      'totalPrice': serializer.toJson<int>(totalPrice),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  TransactionItemModelData copyWith({
    String? id,
    String? transactionId,
    String? productId,
    String? productNameSnapshot,
    Value<String?> categoryNameSnapshot = const Value.absent(),
    Value<String?> imageSnapshot = const Value.absent(),
    int? priceSnapshot,
    int? quantity,
    int? totalPrice,
    DateTime? createdAt,
  }) => TransactionItemModelData(
    id: id ?? this.id,
    transactionId: transactionId ?? this.transactionId,
    productId: productId ?? this.productId,
    productNameSnapshot: productNameSnapshot ?? this.productNameSnapshot,
    categoryNameSnapshot: categoryNameSnapshot.present
        ? categoryNameSnapshot.value
        : this.categoryNameSnapshot,
    imageSnapshot: imageSnapshot.present
        ? imageSnapshot.value
        : this.imageSnapshot,
    priceSnapshot: priceSnapshot ?? this.priceSnapshot,
    quantity: quantity ?? this.quantity,
    totalPrice: totalPrice ?? this.totalPrice,
    createdAt: createdAt ?? this.createdAt,
  );
  TransactionItemModelData copyWithCompanion(
    TransactionItemModelCompanion data,
  ) {
    return TransactionItemModelData(
      id: data.id.present ? data.id.value : this.id,
      transactionId: data.transactionId.present
          ? data.transactionId.value
          : this.transactionId,
      productId: data.productId.present ? data.productId.value : this.productId,
      productNameSnapshot: data.productNameSnapshot.present
          ? data.productNameSnapshot.value
          : this.productNameSnapshot,
      categoryNameSnapshot: data.categoryNameSnapshot.present
          ? data.categoryNameSnapshot.value
          : this.categoryNameSnapshot,
      imageSnapshot: data.imageSnapshot.present
          ? data.imageSnapshot.value
          : this.imageSnapshot,
      priceSnapshot: data.priceSnapshot.present
          ? data.priceSnapshot.value
          : this.priceSnapshot,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      totalPrice: data.totalPrice.present
          ? data.totalPrice.value
          : this.totalPrice,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionItemModelData(')
          ..write('id: $id, ')
          ..write('transactionId: $transactionId, ')
          ..write('productId: $productId, ')
          ..write('productNameSnapshot: $productNameSnapshot, ')
          ..write('categoryNameSnapshot: $categoryNameSnapshot, ')
          ..write('imageSnapshot: $imageSnapshot, ')
          ..write('priceSnapshot: $priceSnapshot, ')
          ..write('quantity: $quantity, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    transactionId,
    productId,
    productNameSnapshot,
    categoryNameSnapshot,
    imageSnapshot,
    priceSnapshot,
    quantity,
    totalPrice,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionItemModelData &&
          other.id == this.id &&
          other.transactionId == this.transactionId &&
          other.productId == this.productId &&
          other.productNameSnapshot == this.productNameSnapshot &&
          other.categoryNameSnapshot == this.categoryNameSnapshot &&
          other.imageSnapshot == this.imageSnapshot &&
          other.priceSnapshot == this.priceSnapshot &&
          other.quantity == this.quantity &&
          other.totalPrice == this.totalPrice &&
          other.createdAt == this.createdAt);
}

class TransactionItemModelCompanion
    extends UpdateCompanion<TransactionItemModelData> {
  final Value<String> id;
  final Value<String> transactionId;
  final Value<String> productId;
  final Value<String> productNameSnapshot;
  final Value<String?> categoryNameSnapshot;
  final Value<String?> imageSnapshot;
  final Value<int> priceSnapshot;
  final Value<int> quantity;
  final Value<int> totalPrice;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const TransactionItemModelCompanion({
    this.id = const Value.absent(),
    this.transactionId = const Value.absent(),
    this.productId = const Value.absent(),
    this.productNameSnapshot = const Value.absent(),
    this.categoryNameSnapshot = const Value.absent(),
    this.imageSnapshot = const Value.absent(),
    this.priceSnapshot = const Value.absent(),
    this.quantity = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TransactionItemModelCompanion.insert({
    required String id,
    required String transactionId,
    required String productId,
    required String productNameSnapshot,
    this.categoryNameSnapshot = const Value.absent(),
    this.imageSnapshot = const Value.absent(),
    required int priceSnapshot,
    required int quantity,
    required int totalPrice,
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       transactionId = Value(transactionId),
       productId = Value(productId),
       productNameSnapshot = Value(productNameSnapshot),
       priceSnapshot = Value(priceSnapshot),
       quantity = Value(quantity),
       totalPrice = Value(totalPrice);
  static Insertable<TransactionItemModelData> custom({
    Expression<String>? id,
    Expression<String>? transactionId,
    Expression<String>? productId,
    Expression<String>? productNameSnapshot,
    Expression<String>? categoryNameSnapshot,
    Expression<String>? imageSnapshot,
    Expression<int>? priceSnapshot,
    Expression<int>? quantity,
    Expression<int>? totalPrice,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (transactionId != null) 'transaction_id': transactionId,
      if (productId != null) 'product_id': productId,
      if (productNameSnapshot != null)
        'product_name_snapshot': productNameSnapshot,
      if (categoryNameSnapshot != null)
        'category_name_snapshot': categoryNameSnapshot,
      if (imageSnapshot != null) 'image_snapshot': imageSnapshot,
      if (priceSnapshot != null) 'price_snapshot': priceSnapshot,
      if (quantity != null) 'quantity': quantity,
      if (totalPrice != null) 'total_price': totalPrice,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TransactionItemModelCompanion copyWith({
    Value<String>? id,
    Value<String>? transactionId,
    Value<String>? productId,
    Value<String>? productNameSnapshot,
    Value<String?>? categoryNameSnapshot,
    Value<String?>? imageSnapshot,
    Value<int>? priceSnapshot,
    Value<int>? quantity,
    Value<int>? totalPrice,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return TransactionItemModelCompanion(
      id: id ?? this.id,
      transactionId: transactionId ?? this.transactionId,
      productId: productId ?? this.productId,
      productNameSnapshot: productNameSnapshot ?? this.productNameSnapshot,
      categoryNameSnapshot: categoryNameSnapshot ?? this.categoryNameSnapshot,
      imageSnapshot: imageSnapshot ?? this.imageSnapshot,
      priceSnapshot: priceSnapshot ?? this.priceSnapshot,
      quantity: quantity ?? this.quantity,
      totalPrice: totalPrice ?? this.totalPrice,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (transactionId.present) {
      map['transaction_id'] = Variable<String>(transactionId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (productNameSnapshot.present) {
      map['product_name_snapshot'] = Variable<String>(
        productNameSnapshot.value,
      );
    }
    if (categoryNameSnapshot.present) {
      map['category_name_snapshot'] = Variable<String>(
        categoryNameSnapshot.value,
      );
    }
    if (imageSnapshot.present) {
      map['image_snapshot'] = Variable<String>(imageSnapshot.value);
    }
    if (priceSnapshot.present) {
      map['price_snapshot'] = Variable<int>(priceSnapshot.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<int>(totalPrice.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionItemModelCompanion(')
          ..write('id: $id, ')
          ..write('transactionId: $transactionId, ')
          ..write('productId: $productId, ')
          ..write('productNameSnapshot: $productNameSnapshot, ')
          ..write('categoryNameSnapshot: $categoryNameSnapshot, ')
          ..write('imageSnapshot: $imageSnapshot, ')
          ..write('priceSnapshot: $priceSnapshot, ')
          ..write('quantity: $quantity, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $UserModelTable userModel = $UserModelTable(this);
  late final $AppConfigModelTable appConfigModel = $AppConfigModelTable(this);
  late final $OrderTypeModelTable orderTypeModel = $OrderTypeModelTable(this);
  late final $ProductCategoryModelTable productCategoryModel =
      $ProductCategoryModelTable(this);
  late final $ProductModelTable productModel = $ProductModelTable(this);
  late final $TransactionModelTable transactionModel = $TransactionModelTable(
    this,
  );
  late final $TransactionItemModelTable transactionItemModel =
      $TransactionItemModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    userModel,
    appConfigModel,
    orderTypeModel,
    productCategoryModel,
    productModel,
    transactionModel,
    transactionItemModel,
  ];
}

typedef $$UserModelTableCreateCompanionBuilder = UserModelCompanion Function({
  required String id,
  required String username,
  required String passwordHash,
  required String role,
  Value<bool> isActive,
  Value<DateTime> createdAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$UserModelTableUpdateCompanionBuilder = UserModelCompanion Function({
  Value<String> id,
  Value<String> username,
  Value<String> passwordHash,
  Value<String> role,
  Value<bool> isActive,
  Value<DateTime> createdAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

class $$UserModelTableFilterComposer
    extends Composer<_$LocalDatabase, $UserModelTable> {
  $$UserModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserModelTableOrderingComposer
    extends Composer<_$LocalDatabase, $UserModelTable> {
  $$UserModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserModelTableAnnotationComposer
    extends Composer<_$LocalDatabase, $UserModelTable> {
  $$UserModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => column,
  );

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$UserModelTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $UserModelTable,
          UserModelData,
          $$UserModelTableFilterComposer,
          $$UserModelTableOrderingComposer,
          $$UserModelTableAnnotationComposer,
          $$UserModelTableCreateCompanionBuilder,
          $$UserModelTableUpdateCompanionBuilder,
          (
            UserModelData,
            BaseReferences<_$LocalDatabase, $UserModelTable, UserModelData>,
          ),
          UserModelData,
          PrefetchHooks Function()
        > {
  $$UserModelTableTableManager(_$LocalDatabase db, $UserModelTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> username = const Value.absent(),
                Value<String> passwordHash = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserModelCompanion(
                id: id,
                username: username,
                passwordHash: passwordHash,
                role: role,
                isActive: isActive,
                createdAt: createdAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String username,
                required String passwordHash,
                required String role,
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserModelCompanion.insert(
                id: id,
                username: username,
                passwordHash: passwordHash,
                role: role,
                isActive: isActive,
                createdAt: createdAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserModelTable, UserModelData>(table),
                  BaseReferences<
                    _$LocalDatabase,
                    $UserModelTable,
                    UserModelData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserModelTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $UserModelTable,
      UserModelData,
      $$UserModelTableFilterComposer,
      $$UserModelTableOrderingComposer,
      $$UserModelTableAnnotationComposer,
      $$UserModelTableCreateCompanionBuilder,
      $$UserModelTableUpdateCompanionBuilder,
      (
        UserModelData,
        BaseReferences<_$LocalDatabase, $UserModelTable, UserModelData>,
      ),
      UserModelData,
      PrefetchHooks Function()
    >;
typedef $$AppConfigModelTableCreateCompanionBuilder =
    AppConfigModelCompanion Function({
      required String key,
      required String value,
      Value<String> type,
      Value<DateTime> updateAt,
      Value<int> rowid,
    });
typedef $$AppConfigModelTableUpdateCompanionBuilder =
    AppConfigModelCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<String> type,
      Value<DateTime> updateAt,
      Value<int> rowid,
    });

class $$AppConfigModelTableFilterComposer
    extends Composer<_$LocalDatabase, $AppConfigModelTable> {
  $$AppConfigModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updateAt => $composableBuilder(
    column: $table.updateAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AppConfigModelTableOrderingComposer
    extends Composer<_$LocalDatabase, $AppConfigModelTable> {
  $$AppConfigModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updateAt => $composableBuilder(
    column: $table.updateAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AppConfigModelTableAnnotationComposer
    extends Composer<_$LocalDatabase, $AppConfigModelTable> {
  $$AppConfigModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get updateAt =>
      $composableBuilder(column: $table.updateAt, builder: (column) => column);
}

class $$AppConfigModelTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $AppConfigModelTable,
          AppConfigModelData,
          $$AppConfigModelTableFilterComposer,
          $$AppConfigModelTableOrderingComposer,
          $$AppConfigModelTableAnnotationComposer,
          $$AppConfigModelTableCreateCompanionBuilder,
          $$AppConfigModelTableUpdateCompanionBuilder,
          (
            AppConfigModelData,
            BaseReferences<
              _$LocalDatabase,
              $AppConfigModelTable,
              AppConfigModelData
            >,
          ),
          AppConfigModelData,
          PrefetchHooks Function()
        > {
  $$AppConfigModelTableTableManager(
    _$LocalDatabase db,
    $AppConfigModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppConfigModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppConfigModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppConfigModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<DateTime> updateAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AppConfigModelCompanion(
                key: key,
                value: value,
                type: type,
                updateAt: updateAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<String> type = const Value.absent(),
                Value<DateTime> updateAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AppConfigModelCompanion.insert(
                key: key,
                value: value,
                type: type,
                updateAt: updateAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AppConfigModelTable, AppConfigModelData>(table),
                  BaseReferences<
                    _$LocalDatabase,
                    $AppConfigModelTable,
                    AppConfigModelData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AppConfigModelTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $AppConfigModelTable,
      AppConfigModelData,
      $$AppConfigModelTableFilterComposer,
      $$AppConfigModelTableOrderingComposer,
      $$AppConfigModelTableAnnotationComposer,
      $$AppConfigModelTableCreateCompanionBuilder,
      $$AppConfigModelTableUpdateCompanionBuilder,
      (
        AppConfigModelData,
        BaseReferences<
          _$LocalDatabase,
          $AppConfigModelTable,
          AppConfigModelData
        >,
      ),
      AppConfigModelData,
      PrefetchHooks Function()
    >;
typedef $$OrderTypeModelTableCreateCompanionBuilder =
    OrderTypeModelCompanion Function({
      required String id,
      required String name,
      required String info,
      Value<String?> surchargeType,
      Value<int?> surchargeValue,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$OrderTypeModelTableUpdateCompanionBuilder =
    OrderTypeModelCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> info,
      Value<String?> surchargeType,
      Value<int?> surchargeValue,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$OrderTypeModelTableFilterComposer
    extends Composer<_$LocalDatabase, $OrderTypeModelTable> {
  $$OrderTypeModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get info => $composableBuilder(
    column: $table.info,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get surchargeType => $composableBuilder(
    column: $table.surchargeType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get surchargeValue => $composableBuilder(
    column: $table.surchargeValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OrderTypeModelTableOrderingComposer
    extends Composer<_$LocalDatabase, $OrderTypeModelTable> {
  $$OrderTypeModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get info => $composableBuilder(
    column: $table.info,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get surchargeType => $composableBuilder(
    column: $table.surchargeType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get surchargeValue => $composableBuilder(
    column: $table.surchargeValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OrderTypeModelTableAnnotationComposer
    extends Composer<_$LocalDatabase, $OrderTypeModelTable> {
  $$OrderTypeModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get info =>
      $composableBuilder(column: $table.info, builder: (column) => column);

  GeneratedColumn<String> get surchargeType => $composableBuilder(
    column: $table.surchargeType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get surchargeValue => $composableBuilder(
    column: $table.surchargeValue,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$OrderTypeModelTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $OrderTypeModelTable,
          OrderTypeModelData,
          $$OrderTypeModelTableFilterComposer,
          $$OrderTypeModelTableOrderingComposer,
          $$OrderTypeModelTableAnnotationComposer,
          $$OrderTypeModelTableCreateCompanionBuilder,
          $$OrderTypeModelTableUpdateCompanionBuilder,
          (
            OrderTypeModelData,
            BaseReferences<
              _$LocalDatabase,
              $OrderTypeModelTable,
              OrderTypeModelData
            >,
          ),
          OrderTypeModelData,
          PrefetchHooks Function()
        > {
  $$OrderTypeModelTableTableManager(
    _$LocalDatabase db,
    $OrderTypeModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrderTypeModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrderTypeModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrderTypeModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> info = const Value.absent(),
                Value<String?> surchargeType = const Value.absent(),
                Value<int?> surchargeValue = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OrderTypeModelCompanion(
                id: id,
                name: name,
                info: info,
                surchargeType: surchargeType,
                surchargeValue: surchargeValue,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String info,
                Value<String?> surchargeType = const Value.absent(),
                Value<int?> surchargeValue = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OrderTypeModelCompanion.insert(
                id: id,
                name: name,
                info: info,
                surchargeType: surchargeType,
                surchargeValue: surchargeValue,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$OrderTypeModelTable, OrderTypeModelData>(table),
                  BaseReferences<
                    _$LocalDatabase,
                    $OrderTypeModelTable,
                    OrderTypeModelData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OrderTypeModelTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $OrderTypeModelTable,
      OrderTypeModelData,
      $$OrderTypeModelTableFilterComposer,
      $$OrderTypeModelTableOrderingComposer,
      $$OrderTypeModelTableAnnotationComposer,
      $$OrderTypeModelTableCreateCompanionBuilder,
      $$OrderTypeModelTableUpdateCompanionBuilder,
      (
        OrderTypeModelData,
        BaseReferences<
          _$LocalDatabase,
          $OrderTypeModelTable,
          OrderTypeModelData
        >,
      ),
      OrderTypeModelData,
      PrefetchHooks Function()
    >;
typedef $$ProductCategoryModelTableCreateCompanionBuilder =
    ProductCategoryModelCompanion Function({
      required String id,
      required String name,
      required String image,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$ProductCategoryModelTableUpdateCompanionBuilder =
    ProductCategoryModelCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> image,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$ProductCategoryModelTableFilterComposer
    extends Composer<_$LocalDatabase, $ProductCategoryModelTable> {
  $$ProductCategoryModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductCategoryModelTableOrderingComposer
    extends Composer<_$LocalDatabase, $ProductCategoryModelTable> {
  $$ProductCategoryModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductCategoryModelTableAnnotationComposer
    extends Composer<_$LocalDatabase, $ProductCategoryModelTable> {
  $$ProductCategoryModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$ProductCategoryModelTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $ProductCategoryModelTable,
          ProductCategoryModelData,
          $$ProductCategoryModelTableFilterComposer,
          $$ProductCategoryModelTableOrderingComposer,
          $$ProductCategoryModelTableAnnotationComposer,
          $$ProductCategoryModelTableCreateCompanionBuilder,
          $$ProductCategoryModelTableUpdateCompanionBuilder,
          (
            ProductCategoryModelData,
            BaseReferences<
              _$LocalDatabase,
              $ProductCategoryModelTable,
              ProductCategoryModelData
            >,
          ),
          ProductCategoryModelData,
          PrefetchHooks Function()
        > {
  $$ProductCategoryModelTableTableManager(
    _$LocalDatabase db,
    $ProductCategoryModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductCategoryModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductCategoryModelTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ProductCategoryModelTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> image = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductCategoryModelCompanion(
                id: id,
                name: name,
                image: image,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String image,
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductCategoryModelCompanion.insert(
                id: id,
                name: name,
                image: image,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<
                    $ProductCategoryModelTable,
                    ProductCategoryModelData
                  >(table),
                  BaseReferences<
                    _$LocalDatabase,
                    $ProductCategoryModelTable,
                    ProductCategoryModelData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductCategoryModelTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $ProductCategoryModelTable,
      ProductCategoryModelData,
      $$ProductCategoryModelTableFilterComposer,
      $$ProductCategoryModelTableOrderingComposer,
      $$ProductCategoryModelTableAnnotationComposer,
      $$ProductCategoryModelTableCreateCompanionBuilder,
      $$ProductCategoryModelTableUpdateCompanionBuilder,
      (
        ProductCategoryModelData,
        BaseReferences<
          _$LocalDatabase,
          $ProductCategoryModelTable,
          ProductCategoryModelData
        >,
      ),
      ProductCategoryModelData,
      PrefetchHooks Function()
    >;
typedef $$ProductModelTableCreateCompanionBuilder =
    ProductModelCompanion Function({
      required String id,
      required String name,
      required String image,
      required int price,
      required String categoryId,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$ProductModelTableUpdateCompanionBuilder =
    ProductModelCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> image,
      Value<int> price,
      Value<String> categoryId,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$ProductModelTableFilterComposer
    extends Composer<_$LocalDatabase, $ProductModelTable> {
  $$ProductModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductModelTableOrderingComposer
    extends Composer<_$LocalDatabase, $ProductModelTable> {
  $$ProductModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductModelTableAnnotationComposer
    extends Composer<_$LocalDatabase, $ProductModelTable> {
  $$ProductModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<int> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$ProductModelTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $ProductModelTable,
          ProductModelData,
          $$ProductModelTableFilterComposer,
          $$ProductModelTableOrderingComposer,
          $$ProductModelTableAnnotationComposer,
          $$ProductModelTableCreateCompanionBuilder,
          $$ProductModelTableUpdateCompanionBuilder,
          (
            ProductModelData,
            BaseReferences<
              _$LocalDatabase,
              $ProductModelTable,
              ProductModelData
            >,
          ),
          ProductModelData,
          PrefetchHooks Function()
        > {
  $$ProductModelTableTableManager(_$LocalDatabase db, $ProductModelTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> image = const Value.absent(),
                Value<int> price = const Value.absent(),
                Value<String> categoryId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductModelCompanion(
                id: id,
                name: name,
                image: image,
                price: price,
                categoryId: categoryId,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String image,
                required int price,
                required String categoryId,
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductModelCompanion.insert(
                id: id,
                name: name,
                image: image,
                price: price,
                categoryId: categoryId,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ProductModelTable, ProductModelData>(table),
                  BaseReferences<
                    _$LocalDatabase,
                    $ProductModelTable,
                    ProductModelData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductModelTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $ProductModelTable,
      ProductModelData,
      $$ProductModelTableFilterComposer,
      $$ProductModelTableOrderingComposer,
      $$ProductModelTableAnnotationComposer,
      $$ProductModelTableCreateCompanionBuilder,
      $$ProductModelTableUpdateCompanionBuilder,
      (
        ProductModelData,
        BaseReferences<_$LocalDatabase, $ProductModelTable, ProductModelData>,
      ),
      ProductModelData,
      PrefetchHooks Function()
    >;
typedef $$TransactionModelTableCreateCompanionBuilder =
    TransactionModelCompanion Function({
      required String id,
      required String transactionCode,
      required String cashierId,
      required String cashierNameSnapshot,
      required String customerName,
      required String paymentMethod,
      Value<String?> orderTypeId,
      Value<String?> orderTypeNameSnapshot,
      Value<String?> orderTypeInfoSnapshot,
      Value<String?> surchargeType,
      Value<int?> surchargeValue,
      Value<int?> surchargeAmount,
      required int subtotal,
      required int tax,
      required int taxAmount,
      required int service,
      required int serviceAmount,
      required int totalAmount,
      required String status,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$TransactionModelTableUpdateCompanionBuilder =
    TransactionModelCompanion Function({
      Value<String> id,
      Value<String> transactionCode,
      Value<String> cashierId,
      Value<String> cashierNameSnapshot,
      Value<String> customerName,
      Value<String> paymentMethod,
      Value<String?> orderTypeId,
      Value<String?> orderTypeNameSnapshot,
      Value<String?> orderTypeInfoSnapshot,
      Value<String?> surchargeType,
      Value<int?> surchargeValue,
      Value<int?> surchargeAmount,
      Value<int> subtotal,
      Value<int> tax,
      Value<int> taxAmount,
      Value<int> service,
      Value<int> serviceAmount,
      Value<int> totalAmount,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$TransactionModelTableFilterComposer
    extends Composer<_$LocalDatabase, $TransactionModelTable> {
  $$TransactionModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get transactionCode => $composableBuilder(
    column: $table.transactionCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cashierId => $composableBuilder(
    column: $table.cashierId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cashierNameSnapshot => $composableBuilder(
    column: $table.cashierNameSnapshot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get customerName => $composableBuilder(
    column: $table.customerName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get orderTypeId => $composableBuilder(
    column: $table.orderTypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get orderTypeNameSnapshot => $composableBuilder(
    column: $table.orderTypeNameSnapshot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get orderTypeInfoSnapshot => $composableBuilder(
    column: $table.orderTypeInfoSnapshot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get surchargeType => $composableBuilder(
    column: $table.surchargeType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get surchargeValue => $composableBuilder(
    column: $table.surchargeValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get surchargeAmount => $composableBuilder(
    column: $table.surchargeAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get subtotal => $composableBuilder(
    column: $table.subtotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tax => $composableBuilder(
    column: $table.tax,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get taxAmount => $composableBuilder(
    column: $table.taxAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get service => $composableBuilder(
    column: $table.service,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get serviceAmount => $composableBuilder(
    column: $table.serviceAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalAmount => $composableBuilder(
    column: $table.totalAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TransactionModelTableOrderingComposer
    extends Composer<_$LocalDatabase, $TransactionModelTable> {
  $$TransactionModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get transactionCode => $composableBuilder(
    column: $table.transactionCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cashierId => $composableBuilder(
    column: $table.cashierId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cashierNameSnapshot => $composableBuilder(
    column: $table.cashierNameSnapshot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get customerName => $composableBuilder(
    column: $table.customerName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get orderTypeId => $composableBuilder(
    column: $table.orderTypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get orderTypeNameSnapshot => $composableBuilder(
    column: $table.orderTypeNameSnapshot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get orderTypeInfoSnapshot => $composableBuilder(
    column: $table.orderTypeInfoSnapshot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get surchargeType => $composableBuilder(
    column: $table.surchargeType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get surchargeValue => $composableBuilder(
    column: $table.surchargeValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get surchargeAmount => $composableBuilder(
    column: $table.surchargeAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get subtotal => $composableBuilder(
    column: $table.subtotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tax => $composableBuilder(
    column: $table.tax,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get taxAmount => $composableBuilder(
    column: $table.taxAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get service => $composableBuilder(
    column: $table.service,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get serviceAmount => $composableBuilder(
    column: $table.serviceAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalAmount => $composableBuilder(
    column: $table.totalAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TransactionModelTableAnnotationComposer
    extends Composer<_$LocalDatabase, $TransactionModelTable> {
  $$TransactionModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get transactionCode => $composableBuilder(
    column: $table.transactionCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cashierId =>
      $composableBuilder(column: $table.cashierId, builder: (column) => column);

  GeneratedColumn<String> get cashierNameSnapshot => $composableBuilder(
    column: $table.cashierNameSnapshot,
    builder: (column) => column,
  );

  GeneratedColumn<String> get customerName => $composableBuilder(
    column: $table.customerName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => column,
  );

  GeneratedColumn<String> get orderTypeId => $composableBuilder(
    column: $table.orderTypeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get orderTypeNameSnapshot => $composableBuilder(
    column: $table.orderTypeNameSnapshot,
    builder: (column) => column,
  );

  GeneratedColumn<String> get orderTypeInfoSnapshot => $composableBuilder(
    column: $table.orderTypeInfoSnapshot,
    builder: (column) => column,
  );

  GeneratedColumn<String> get surchargeType => $composableBuilder(
    column: $table.surchargeType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get surchargeValue => $composableBuilder(
    column: $table.surchargeValue,
    builder: (column) => column,
  );

  GeneratedColumn<int> get surchargeAmount => $composableBuilder(
    column: $table.surchargeAmount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get subtotal =>
      $composableBuilder(column: $table.subtotal, builder: (column) => column);

  GeneratedColumn<int> get tax =>
      $composableBuilder(column: $table.tax, builder: (column) => column);

  GeneratedColumn<int> get taxAmount =>
      $composableBuilder(column: $table.taxAmount, builder: (column) => column);

  GeneratedColumn<int> get service =>
      $composableBuilder(column: $table.service, builder: (column) => column);

  GeneratedColumn<int> get serviceAmount => $composableBuilder(
    column: $table.serviceAmount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalAmount => $composableBuilder(
    column: $table.totalAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$TransactionModelTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $TransactionModelTable,
          TransactionModelData,
          $$TransactionModelTableFilterComposer,
          $$TransactionModelTableOrderingComposer,
          $$TransactionModelTableAnnotationComposer,
          $$TransactionModelTableCreateCompanionBuilder,
          $$TransactionModelTableUpdateCompanionBuilder,
          (
            TransactionModelData,
            BaseReferences<
              _$LocalDatabase,
              $TransactionModelTable,
              TransactionModelData
            >,
          ),
          TransactionModelData,
          PrefetchHooks Function()
        > {
  $$TransactionModelTableTableManager(
    _$LocalDatabase db,
    $TransactionModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> transactionCode = const Value.absent(),
                Value<String> cashierId = const Value.absent(),
                Value<String> cashierNameSnapshot = const Value.absent(),
                Value<String> customerName = const Value.absent(),
                Value<String> paymentMethod = const Value.absent(),
                Value<String?> orderTypeId = const Value.absent(),
                Value<String?> orderTypeNameSnapshot = const Value.absent(),
                Value<String?> orderTypeInfoSnapshot = const Value.absent(),
                Value<String?> surchargeType = const Value.absent(),
                Value<int?> surchargeValue = const Value.absent(),
                Value<int?> surchargeAmount = const Value.absent(),
                Value<int> subtotal = const Value.absent(),
                Value<int> tax = const Value.absent(),
                Value<int> taxAmount = const Value.absent(),
                Value<int> service = const Value.absent(),
                Value<int> serviceAmount = const Value.absent(),
                Value<int> totalAmount = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionModelCompanion(
                id: id,
                transactionCode: transactionCode,
                cashierId: cashierId,
                cashierNameSnapshot: cashierNameSnapshot,
                customerName: customerName,
                paymentMethod: paymentMethod,
                orderTypeId: orderTypeId,
                orderTypeNameSnapshot: orderTypeNameSnapshot,
                orderTypeInfoSnapshot: orderTypeInfoSnapshot,
                surchargeType: surchargeType,
                surchargeValue: surchargeValue,
                surchargeAmount: surchargeAmount,
                subtotal: subtotal,
                tax: tax,
                taxAmount: taxAmount,
                service: service,
                serviceAmount: serviceAmount,
                totalAmount: totalAmount,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String transactionCode,
                required String cashierId,
                required String cashierNameSnapshot,
                required String customerName,
                required String paymentMethod,
                Value<String?> orderTypeId = const Value.absent(),
                Value<String?> orderTypeNameSnapshot = const Value.absent(),
                Value<String?> orderTypeInfoSnapshot = const Value.absent(),
                Value<String?> surchargeType = const Value.absent(),
                Value<int?> surchargeValue = const Value.absent(),
                Value<int?> surchargeAmount = const Value.absent(),
                required int subtotal,
                required int tax,
                required int taxAmount,
                required int service,
                required int serviceAmount,
                required int totalAmount,
                required String status,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionModelCompanion.insert(
                id: id,
                transactionCode: transactionCode,
                cashierId: cashierId,
                cashierNameSnapshot: cashierNameSnapshot,
                customerName: customerName,
                paymentMethod: paymentMethod,
                orderTypeId: orderTypeId,
                orderTypeNameSnapshot: orderTypeNameSnapshot,
                orderTypeInfoSnapshot: orderTypeInfoSnapshot,
                surchargeType: surchargeType,
                surchargeValue: surchargeValue,
                surchargeAmount: surchargeAmount,
                subtotal: subtotal,
                tax: tax,
                taxAmount: taxAmount,
                service: service,
                serviceAmount: serviceAmount,
                totalAmount: totalAmount,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TransactionModelTable, TransactionModelData>(
                    table,
                  ),
                  BaseReferences<
                    _$LocalDatabase,
                    $TransactionModelTable,
                    TransactionModelData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TransactionModelTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $TransactionModelTable,
      TransactionModelData,
      $$TransactionModelTableFilterComposer,
      $$TransactionModelTableOrderingComposer,
      $$TransactionModelTableAnnotationComposer,
      $$TransactionModelTableCreateCompanionBuilder,
      $$TransactionModelTableUpdateCompanionBuilder,
      (
        TransactionModelData,
        BaseReferences<
          _$LocalDatabase,
          $TransactionModelTable,
          TransactionModelData
        >,
      ),
      TransactionModelData,
      PrefetchHooks Function()
    >;
typedef $$TransactionItemModelTableCreateCompanionBuilder =
    TransactionItemModelCompanion Function({
      required String id,
      required String transactionId,
      required String productId,
      required String productNameSnapshot,
      Value<String?> categoryNameSnapshot,
      Value<String?> imageSnapshot,
      required int priceSnapshot,
      required int quantity,
      required int totalPrice,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$TransactionItemModelTableUpdateCompanionBuilder =
    TransactionItemModelCompanion Function({
      Value<String> id,
      Value<String> transactionId,
      Value<String> productId,
      Value<String> productNameSnapshot,
      Value<String?> categoryNameSnapshot,
      Value<String?> imageSnapshot,
      Value<int> priceSnapshot,
      Value<int> quantity,
      Value<int> totalPrice,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$TransactionItemModelTableFilterComposer
    extends Composer<_$LocalDatabase, $TransactionItemModelTable> {
  $$TransactionItemModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get transactionId => $composableBuilder(
    column: $table.transactionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productNameSnapshot => $composableBuilder(
    column: $table.productNameSnapshot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoryNameSnapshot => $composableBuilder(
    column: $table.categoryNameSnapshot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageSnapshot => $composableBuilder(
    column: $table.imageSnapshot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get priceSnapshot => $composableBuilder(
    column: $table.priceSnapshot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalPrice => $composableBuilder(
    column: $table.totalPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TransactionItemModelTableOrderingComposer
    extends Composer<_$LocalDatabase, $TransactionItemModelTable> {
  $$TransactionItemModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get transactionId => $composableBuilder(
    column: $table.transactionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productNameSnapshot => $composableBuilder(
    column: $table.productNameSnapshot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoryNameSnapshot => $composableBuilder(
    column: $table.categoryNameSnapshot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageSnapshot => $composableBuilder(
    column: $table.imageSnapshot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get priceSnapshot => $composableBuilder(
    column: $table.priceSnapshot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalPrice => $composableBuilder(
    column: $table.totalPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TransactionItemModelTableAnnotationComposer
    extends Composer<_$LocalDatabase, $TransactionItemModelTable> {
  $$TransactionItemModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get transactionId => $composableBuilder(
    column: $table.transactionId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get productNameSnapshot => $composableBuilder(
    column: $table.productNameSnapshot,
    builder: (column) => column,
  );

  GeneratedColumn<String> get categoryNameSnapshot => $composableBuilder(
    column: $table.categoryNameSnapshot,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageSnapshot => $composableBuilder(
    column: $table.imageSnapshot,
    builder: (column) => column,
  );

  GeneratedColumn<int> get priceSnapshot => $composableBuilder(
    column: $table.priceSnapshot,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<int> get totalPrice => $composableBuilder(
    column: $table.totalPrice,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$TransactionItemModelTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $TransactionItemModelTable,
          TransactionItemModelData,
          $$TransactionItemModelTableFilterComposer,
          $$TransactionItemModelTableOrderingComposer,
          $$TransactionItemModelTableAnnotationComposer,
          $$TransactionItemModelTableCreateCompanionBuilder,
          $$TransactionItemModelTableUpdateCompanionBuilder,
          (
            TransactionItemModelData,
            BaseReferences<
              _$LocalDatabase,
              $TransactionItemModelTable,
              TransactionItemModelData
            >,
          ),
          TransactionItemModelData,
          PrefetchHooks Function()
        > {
  $$TransactionItemModelTableTableManager(
    _$LocalDatabase db,
    $TransactionItemModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionItemModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionItemModelTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$TransactionItemModelTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> transactionId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<String> productNameSnapshot = const Value.absent(),
                Value<String?> categoryNameSnapshot = const Value.absent(),
                Value<String?> imageSnapshot = const Value.absent(),
                Value<int> priceSnapshot = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<int> totalPrice = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionItemModelCompanion(
                id: id,
                transactionId: transactionId,
                productId: productId,
                productNameSnapshot: productNameSnapshot,
                categoryNameSnapshot: categoryNameSnapshot,
                imageSnapshot: imageSnapshot,
                priceSnapshot: priceSnapshot,
                quantity: quantity,
                totalPrice: totalPrice,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String transactionId,
                required String productId,
                required String productNameSnapshot,
                Value<String?> categoryNameSnapshot = const Value.absent(),
                Value<String?> imageSnapshot = const Value.absent(),
                required int priceSnapshot,
                required int quantity,
                required int totalPrice,
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionItemModelCompanion.insert(
                id: id,
                transactionId: transactionId,
                productId: productId,
                productNameSnapshot: productNameSnapshot,
                categoryNameSnapshot: categoryNameSnapshot,
                imageSnapshot: imageSnapshot,
                priceSnapshot: priceSnapshot,
                quantity: quantity,
                totalPrice: totalPrice,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<
                    $TransactionItemModelTable,
                    TransactionItemModelData
                  >(table),
                  BaseReferences<
                    _$LocalDatabase,
                    $TransactionItemModelTable,
                    TransactionItemModelData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TransactionItemModelTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $TransactionItemModelTable,
      TransactionItemModelData,
      $$TransactionItemModelTableFilterComposer,
      $$TransactionItemModelTableOrderingComposer,
      $$TransactionItemModelTableAnnotationComposer,
      $$TransactionItemModelTableCreateCompanionBuilder,
      $$TransactionItemModelTableUpdateCompanionBuilder,
      (
        TransactionItemModelData,
        BaseReferences<
          _$LocalDatabase,
          $TransactionItemModelTable,
          TransactionItemModelData
        >,
      ),
      TransactionItemModelData,
      PrefetchHooks Function()
    >;

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$UserModelTableTableManager get userModel =>
      $$UserModelTableTableManager(_db, _db.userModel);
  $$AppConfigModelTableTableManager get appConfigModel =>
      $$AppConfigModelTableTableManager(_db, _db.appConfigModel);
  $$OrderTypeModelTableTableManager get orderTypeModel =>
      $$OrderTypeModelTableTableManager(_db, _db.orderTypeModel);
  $$ProductCategoryModelTableTableManager get productCategoryModel =>
      $$ProductCategoryModelTableTableManager(_db, _db.productCategoryModel);
  $$ProductModelTableTableManager get productModel =>
      $$ProductModelTableTableManager(_db, _db.productModel);
  $$TransactionModelTableTableManager get transactionModel =>
      $$TransactionModelTableTableManager(_db, _db.transactionModel);
  $$TransactionItemModelTableTableManager get transactionItemModel =>
      $$TransactionItemModelTableTableManager(_db, _db.transactionItemModel);
}

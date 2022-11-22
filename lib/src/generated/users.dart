/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class Users extends TableRow {
  @override
  String get className => 'Users';
  @override
  String get tableName => 'users';

  static final t = UsersTable();

  @override
  int? id;
  late String name;
  late int age;
  late String mobile;
  late String email;
  late String aadharNo;
  late String panNo;
  late DateTime dob;
  late int blockCount;
  late String mobileModel;
  late bool status;
  late bool isActive;

  Users({
    this.id,
    required this.name,
    required this.age,
    required this.mobile,
    required this.email,
    required this.aadharNo,
    required this.panNo,
    required this.dob,
    required this.blockCount,
    required this.mobileModel,
    required this.status,
    required this.isActive,
  });

  Users.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    name = _data['name']!;
    age = _data['age']!;
    mobile = _data['mobile']!;
    email = _data['email']!;
    aadharNo = _data['aadharNo']!;
    panNo = _data['panNo']!;
    dob = DateTime.tryParse(_data['dob'])!;
    blockCount = _data['blockCount']!;
    mobileModel = _data['mobileModel']!;
    status = _data['status']!;
    isActive = _data['isActive']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'age': age,
      'mobile': mobile,
      'email': email,
      'aadharNo': aadharNo,
      'panNo': panNo,
      'dob': dob.toUtc().toIso8601String(),
      'blockCount': blockCount,
      'mobileModel': mobileModel,
      'status': status,
      'isActive': isActive,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'age': age,
      'mobile': mobile,
      'email': email,
      'aadharNo': aadharNo,
      'panNo': panNo,
      'dob': dob.toUtc().toIso8601String(),
      'blockCount': blockCount,
      'mobileModel': mobileModel,
      'status': status,
      'isActive': isActive,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'age': age,
      'mobile': mobile,
      'email': email,
      'aadharNo': aadharNo,
      'panNo': panNo,
      'dob': dob.toUtc().toIso8601String(),
      'blockCount': blockCount,
      'mobileModel': mobileModel,
      'status': status,
      'isActive': isActive,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'age':
        age = value;
        return;
      case 'mobile':
        mobile = value;
        return;
      case 'email':
        email = value;
        return;
      case 'aadharNo':
        aadharNo = value;
        return;
      case 'panNo':
        panNo = value;
        return;
      case 'dob':
        dob = value;
        return;
      case 'blockCount':
        blockCount = value;
        return;
      case 'mobileModel':
        mobileModel = value;
        return;
      case 'status':
        status = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Users>> find(
    Session session, {
    UsersExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Users>(
      where: where != null ? where(Users.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Users?> findSingleRow(
    Session session, {
    UsersExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Users>(
      where: where != null ? where(Users.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Users?> findById(Session session, int id) async {
    return session.db.findById<Users>(id);
  }

  static Future<int> delete(
    Session session, {
    required UsersExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Users>(
      where: where(Users.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Users row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Users row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Users row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    UsersExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Users>(
      where: where != null ? where(Users.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UsersExpressionBuilder = Expression Function(UsersTable t);

class UsersTable extends Table {
  UsersTable() : super(tableName: 'users');

  @override
  String tableName = 'users';
  final id = ColumnInt('id');
  final name = ColumnString('name');
  final age = ColumnInt('age');
  final mobile = ColumnString('mobile');
  final email = ColumnString('email');
  final aadharNo = ColumnString('aadharNo');
  final panNo = ColumnString('panNo');
  final dob = ColumnDateTime('dob');
  final blockCount = ColumnInt('blockCount');
  final mobileModel = ColumnString('mobileModel');
  final status = ColumnBool('status');
  final isActive = ColumnBool('isActive');

  @override
  List<Column> get columns => [
        id,
        name,
        age,
        mobile,
        email,
        aadharNo,
        panNo,
        dob,
        blockCount,
        mobileModel,
        status,
        isActive,
      ];
}

@Deprecated('Use UsersTable.t instead.')
UsersTable tUsers = UsersTable();

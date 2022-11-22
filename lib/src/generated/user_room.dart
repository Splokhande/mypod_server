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

class UserRoom extends TableRow {
  @override
  String get className => 'UserRoom';
  @override
  String get tableName => 'user_room';

  static final t = UserRoomTable();

  @override
  int? id;
  late int socId;
  late int userId;
  late int roomId;
  late DateTime fromDate;
  late DateTime toDate;
  late bool ownership;
  late bool isResident;
  late bool isRental;

  UserRoom({
    this.id,
    required this.socId,
    required this.userId,
    required this.roomId,
    required this.fromDate,
    required this.toDate,
    required this.ownership,
    required this.isResident,
    required this.isRental,
  });

  UserRoom.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    socId = _data['socId']!;
    userId = _data['userId']!;
    roomId = _data['roomId']!;
    fromDate = DateTime.tryParse(_data['fromDate'])!;
    toDate = DateTime.tryParse(_data['toDate'])!;
    ownership = _data['ownership']!;
    isResident = _data['isResident']!;
    isRental = _data['isRental']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'userId': userId,
      'roomId': roomId,
      'fromDate': fromDate.toUtc().toIso8601String(),
      'toDate': toDate.toUtc().toIso8601String(),
      'ownership': ownership,
      'isResident': isResident,
      'isRental': isRental,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'userId': userId,
      'roomId': roomId,
      'fromDate': fromDate.toUtc().toIso8601String(),
      'toDate': toDate.toUtc().toIso8601String(),
      'ownership': ownership,
      'isResident': isResident,
      'isRental': isRental,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'userId': userId,
      'roomId': roomId,
      'fromDate': fromDate.toUtc().toIso8601String(),
      'toDate': toDate.toUtc().toIso8601String(),
      'ownership': ownership,
      'isResident': isResident,
      'isRental': isRental,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'socId':
        socId = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'roomId':
        roomId = value;
        return;
      case 'fromDate':
        fromDate = value;
        return;
      case 'toDate':
        toDate = value;
        return;
      case 'ownership':
        ownership = value;
        return;
      case 'isResident':
        isResident = value;
        return;
      case 'isRental':
        isRental = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<UserRoom>> find(
    Session session, {
    UserRoomExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<UserRoom>(
      where: where != null ? where(UserRoom.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<UserRoom?> findSingleRow(
    Session session, {
    UserRoomExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<UserRoom>(
      where: where != null ? where(UserRoom.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<UserRoom?> findById(Session session, int id) async {
    return session.db.findById<UserRoom>(id);
  }

  static Future<int> delete(
    Session session, {
    required UserRoomExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<UserRoom>(
      where: where(UserRoom.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    UserRoom row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    UserRoom row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    UserRoom row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    UserRoomExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<UserRoom>(
      where: where != null ? where(UserRoom.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserRoomExpressionBuilder = Expression Function(UserRoomTable t);

class UserRoomTable extends Table {
  UserRoomTable() : super(tableName: 'user_room');

  @override
  String tableName = 'user_room';
  final id = ColumnInt('id');
  final socId = ColumnInt('socId');
  final userId = ColumnInt('userId');
  final roomId = ColumnInt('roomId');
  final fromDate = ColumnDateTime('fromDate');
  final toDate = ColumnDateTime('toDate');
  final ownership = ColumnBool('ownership');
  final isResident = ColumnBool('isResident');
  final isRental = ColumnBool('isRental');

  @override
  List<Column> get columns => [
        id,
        socId,
        userId,
        roomId,
        fromDate,
        toDate,
        ownership,
        isResident,
        isRental,
      ];
}

@Deprecated('Use UserRoomTable.t instead.')
UserRoomTable tUserRoom = UserRoomTable();

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

class MaintenanceBook extends TableRow {
  @override
  String get className => 'MaintenanceBook';
  @override
  String get tableName => 'maintenance_book';

  static final t = MaintenanceBookTable();

  @override
  int? id;
  late int socId;
  late int receiptId;
  late int roomNo;
  late String block;
  late int year;
  late int ownerId;
  late String paymentMode;
  late DateTime paymentDate;
  late int collectedBy;
  late String month;
  late int penalty;

  MaintenanceBook({
    this.id,
    required this.socId,
    required this.receiptId,
    required this.roomNo,
    required this.block,
    required this.year,
    required this.ownerId,
    required this.paymentMode,
    required this.paymentDate,
    required this.collectedBy,
    required this.month,
    required this.penalty,
  });

  MaintenanceBook.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    socId = _data['socId']!;
    receiptId = _data['receiptId']!;
    roomNo = _data['roomNo']!;
    block = _data['block']!;
    year = _data['year']!;
    ownerId = _data['ownerId']!;
    paymentMode = _data['paymentMode']!;
    paymentDate = DateTime.tryParse(_data['paymentDate'])!;
    collectedBy = _data['collectedBy']!;
    month = _data['month']!;
    penalty = _data['penalty']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'receiptId': receiptId,
      'roomNo': roomNo,
      'block': block,
      'year': year,
      'ownerId': ownerId,
      'paymentMode': paymentMode,
      'paymentDate': paymentDate.toUtc().toIso8601String(),
      'collectedBy': collectedBy,
      'month': month,
      'penalty': penalty,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'receiptId': receiptId,
      'roomNo': roomNo,
      'block': block,
      'year': year,
      'ownerId': ownerId,
      'paymentMode': paymentMode,
      'paymentDate': paymentDate.toUtc().toIso8601String(),
      'collectedBy': collectedBy,
      'month': month,
      'penalty': penalty,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'receiptId': receiptId,
      'roomNo': roomNo,
      'block': block,
      'year': year,
      'ownerId': ownerId,
      'paymentMode': paymentMode,
      'paymentDate': paymentDate.toUtc().toIso8601String(),
      'collectedBy': collectedBy,
      'month': month,
      'penalty': penalty,
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
      case 'receiptId':
        receiptId = value;
        return;
      case 'roomNo':
        roomNo = value;
        return;
      case 'block':
        block = value;
        return;
      case 'year':
        year = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      case 'paymentMode':
        paymentMode = value;
        return;
      case 'paymentDate':
        paymentDate = value;
        return;
      case 'collectedBy':
        collectedBy = value;
        return;
      case 'month':
        month = value;
        return;
      case 'penalty':
        penalty = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<MaintenanceBook>> find(
    Session session, {
    MaintenanceBookExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<MaintenanceBook>(
      where: where != null ? where(MaintenanceBook.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintenanceBook?> findSingleRow(
    Session session, {
    MaintenanceBookExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<MaintenanceBook>(
      where: where != null ? where(MaintenanceBook.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintenanceBook?> findById(Session session, int id) async {
    return session.db.findById<MaintenanceBook>(id);
  }

  static Future<int> delete(
    Session session, {
    required MaintenanceBookExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<MaintenanceBook>(
      where: where(MaintenanceBook.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    MaintenanceBook row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    MaintenanceBook row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    MaintenanceBook row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    MaintenanceBookExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<MaintenanceBook>(
      where: where != null ? where(MaintenanceBook.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MaintenanceBookExpressionBuilder = Expression Function(
    MaintenanceBookTable t);

class MaintenanceBookTable extends Table {
  MaintenanceBookTable() : super(tableName: 'maintenance_book');

  @override
  String tableName = 'maintenance_book';
  final id = ColumnInt('id');
  final socId = ColumnInt('socId');
  final receiptId = ColumnInt('receiptId');
  final roomNo = ColumnInt('roomNo');
  final block = ColumnString('block');
  final year = ColumnInt('year');
  final ownerId = ColumnInt('ownerId');
  final paymentMode = ColumnString('paymentMode');
  final paymentDate = ColumnDateTime('paymentDate');
  final collectedBy = ColumnInt('collectedBy');
  final month = ColumnString('month');
  final penalty = ColumnInt('penalty');

  @override
  List<Column> get columns => [
        id,
        socId,
        receiptId,
        roomNo,
        block,
        year,
        ownerId,
        paymentMode,
        paymentDate,
        collectedBy,
        month,
        penalty,
      ];
}

@Deprecated('Use MaintenanceBookTable.t instead.')
MaintenanceBookTable tMaintenanceBook = MaintenanceBookTable();

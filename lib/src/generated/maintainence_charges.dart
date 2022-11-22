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

class MaintainenceCharges extends TableRow {
  @override
  String get className => 'MaintainenceCharges';
  @override
  String get tableName => 'maintainence_charges';

  static final t = MaintainenceChargesTable();

  @override
  int? id;
  late int socId;
  late DateTime fromDate;
  late DateTime toDate;
  late int oneBhk;
  late int twoBhk;
  late int threeBhk;
  late int fourBhk;
  late int persqft;
  late int twoWheel;
  late int threeWheel;
  late int fourWheel;
  late int other;
  late int rental;
  late int nonOccupancy;
  late int year;
  late int penalty;
  late int dueDate;
  late bool isActive;

  MaintainenceCharges({
    this.id,
    required this.socId,
    required this.fromDate,
    required this.toDate,
    required this.oneBhk,
    required this.twoBhk,
    required this.threeBhk,
    required this.fourBhk,
    required this.persqft,
    required this.twoWheel,
    required this.threeWheel,
    required this.fourWheel,
    required this.other,
    required this.rental,
    required this.nonOccupancy,
    required this.year,
    required this.penalty,
    required this.dueDate,
    required this.isActive,
  });

  MaintainenceCharges.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    socId = _data['socId']!;
    fromDate = DateTime.tryParse(_data['fromDate'])!;
    toDate = DateTime.tryParse(_data['toDate'])!;
    oneBhk = _data['oneBhk']!;
    twoBhk = _data['twoBhk']!;
    threeBhk = _data['threeBhk']!;
    fourBhk = _data['fourBhk']!;
    persqft = _data['persqft']!;
    twoWheel = _data['twoWheel']!;
    threeWheel = _data['threeWheel']!;
    fourWheel = _data['fourWheel']!;
    other = _data['other']!;
    rental = _data['rental']!;
    nonOccupancy = _data['nonOccupancy']!;
    year = _data['year']!;
    penalty = _data['penalty']!;
    dueDate = _data['dueDate']!;
    isActive = _data['isActive']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'fromDate': fromDate.toUtc().toIso8601String(),
      'toDate': toDate.toUtc().toIso8601String(),
      'oneBhk': oneBhk,
      'twoBhk': twoBhk,
      'threeBhk': threeBhk,
      'fourBhk': fourBhk,
      'persqft': persqft,
      'twoWheel': twoWheel,
      'threeWheel': threeWheel,
      'fourWheel': fourWheel,
      'other': other,
      'rental': rental,
      'nonOccupancy': nonOccupancy,
      'year': year,
      'penalty': penalty,
      'dueDate': dueDate,
      'isActive': isActive,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'fromDate': fromDate.toUtc().toIso8601String(),
      'toDate': toDate.toUtc().toIso8601String(),
      'oneBhk': oneBhk,
      'twoBhk': twoBhk,
      'threeBhk': threeBhk,
      'fourBhk': fourBhk,
      'persqft': persqft,
      'twoWheel': twoWheel,
      'threeWheel': threeWheel,
      'fourWheel': fourWheel,
      'other': other,
      'rental': rental,
      'nonOccupancy': nonOccupancy,
      'year': year,
      'penalty': penalty,
      'dueDate': dueDate,
      'isActive': isActive,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'fromDate': fromDate.toUtc().toIso8601String(),
      'toDate': toDate.toUtc().toIso8601String(),
      'oneBhk': oneBhk,
      'twoBhk': twoBhk,
      'threeBhk': threeBhk,
      'fourBhk': fourBhk,
      'persqft': persqft,
      'twoWheel': twoWheel,
      'threeWheel': threeWheel,
      'fourWheel': fourWheel,
      'other': other,
      'rental': rental,
      'nonOccupancy': nonOccupancy,
      'year': year,
      'penalty': penalty,
      'dueDate': dueDate,
      'isActive': isActive,
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
      case 'fromDate':
        fromDate = value;
        return;
      case 'toDate':
        toDate = value;
        return;
      case 'oneBhk':
        oneBhk = value;
        return;
      case 'twoBhk':
        twoBhk = value;
        return;
      case 'threeBhk':
        threeBhk = value;
        return;
      case 'fourBhk':
        fourBhk = value;
        return;
      case 'persqft':
        persqft = value;
        return;
      case 'twoWheel':
        twoWheel = value;
        return;
      case 'threeWheel':
        threeWheel = value;
        return;
      case 'fourWheel':
        fourWheel = value;
        return;
      case 'other':
        other = value;
        return;
      case 'rental':
        rental = value;
        return;
      case 'nonOccupancy':
        nonOccupancy = value;
        return;
      case 'year':
        year = value;
        return;
      case 'penalty':
        penalty = value;
        return;
      case 'dueDate':
        dueDate = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<MaintainenceCharges>> find(
    Session session, {
    MaintainenceChargesExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<MaintainenceCharges>(
      where: where != null ? where(MaintainenceCharges.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintainenceCharges?> findSingleRow(
    Session session, {
    MaintainenceChargesExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<MaintainenceCharges>(
      where: where != null ? where(MaintainenceCharges.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintainenceCharges?> findById(Session session, int id) async {
    return session.db.findById<MaintainenceCharges>(id);
  }

  static Future<int> delete(
    Session session, {
    required MaintainenceChargesExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<MaintainenceCharges>(
      where: where(MaintainenceCharges.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    MaintainenceCharges row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    MaintainenceCharges row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    MaintainenceCharges row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    MaintainenceChargesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<MaintainenceCharges>(
      where: where != null ? where(MaintainenceCharges.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MaintainenceChargesExpressionBuilder = Expression Function(
    MaintainenceChargesTable t);

class MaintainenceChargesTable extends Table {
  MaintainenceChargesTable() : super(tableName: 'maintainence_charges');

  @override
  String tableName = 'maintainence_charges';
  final id = ColumnInt('id');
  final socId = ColumnInt('socId');
  final fromDate = ColumnDateTime('fromDate');
  final toDate = ColumnDateTime('toDate');
  final oneBhk = ColumnInt('oneBhk');
  final twoBhk = ColumnInt('twoBhk');
  final threeBhk = ColumnInt('threeBhk');
  final fourBhk = ColumnInt('fourBhk');
  final persqft = ColumnInt('persqft');
  final twoWheel = ColumnInt('twoWheel');
  final threeWheel = ColumnInt('threeWheel');
  final fourWheel = ColumnInt('fourWheel');
  final other = ColumnInt('other');
  final rental = ColumnInt('rental');
  final nonOccupancy = ColumnInt('nonOccupancy');
  final year = ColumnInt('year');
  final penalty = ColumnInt('penalty');
  final dueDate = ColumnInt('dueDate');
  final isActive = ColumnBool('isActive');

  @override
  List<Column> get columns => [
        id,
        socId,
        fromDate,
        toDate,
        oneBhk,
        twoBhk,
        threeBhk,
        fourBhk,
        persqft,
        twoWheel,
        threeWheel,
        fourWheel,
        other,
        rental,
        nonOccupancy,
        year,
        penalty,
        dueDate,
        isActive,
      ];
}

@Deprecated('Use MaintainenceChargesTable.t instead.')
MaintainenceChargesTable tMaintainenceCharges = MaintainenceChargesTable();

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

class Vehicles extends TableRow {
  @override
  String get className => 'Vehicles';
  @override
  String get tableName => 'vehicles';

  static final t = VehiclesTable();

  @override
  int? id;
  late String vehicleNo;
  late int ownerId;
  late int roomId;
  late int vehicleType;
  late DateTime entryDate;
  late DateTime updatedDate;

  Vehicles({
    this.id,
    required this.vehicleNo,
    required this.ownerId,
    required this.roomId,
    required this.vehicleType,
    required this.entryDate,
    required this.updatedDate,
  });

  Vehicles.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    vehicleNo = _data['vehicleNo']!;
    ownerId = _data['ownerId']!;
    roomId = _data['roomId']!;
    vehicleType = _data['vehicleType']!;
    entryDate = DateTime.tryParse(_data['entryDate'])!;
    updatedDate = DateTime.tryParse(_data['updatedDate'])!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'vehicleNo': vehicleNo,
      'ownerId': ownerId,
      'roomId': roomId,
      'vehicleType': vehicleType,
      'entryDate': entryDate.toUtc().toIso8601String(),
      'updatedDate': updatedDate.toUtc().toIso8601String(),
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'vehicleNo': vehicleNo,
      'ownerId': ownerId,
      'roomId': roomId,
      'vehicleType': vehicleType,
      'entryDate': entryDate.toUtc().toIso8601String(),
      'updatedDate': updatedDate.toUtc().toIso8601String(),
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'vehicleNo': vehicleNo,
      'ownerId': ownerId,
      'roomId': roomId,
      'vehicleType': vehicleType,
      'entryDate': entryDate.toUtc().toIso8601String(),
      'updatedDate': updatedDate.toUtc().toIso8601String(),
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'vehicleNo':
        vehicleNo = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      case 'roomId':
        roomId = value;
        return;
      case 'vehicleType':
        vehicleType = value;
        return;
      case 'entryDate':
        entryDate = value;
        return;
      case 'updatedDate':
        updatedDate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Vehicles>> find(
    Session session, {
    VehiclesExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Vehicles>(
      where: where != null ? where(Vehicles.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Vehicles?> findSingleRow(
    Session session, {
    VehiclesExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Vehicles>(
      where: where != null ? where(Vehicles.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Vehicles?> findById(Session session, int id) async {
    return session.db.findById<Vehicles>(id);
  }

  static Future<int> delete(
    Session session, {
    required VehiclesExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Vehicles>(
      where: where(Vehicles.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Vehicles row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Vehicles row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Vehicles row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    VehiclesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Vehicles>(
      where: where != null ? where(Vehicles.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef VehiclesExpressionBuilder = Expression Function(VehiclesTable t);

class VehiclesTable extends Table {
  VehiclesTable() : super(tableName: 'vehicles');

  @override
  String tableName = 'vehicles';
  final id = ColumnInt('id');
  final vehicleNo = ColumnString('vehicleNo');
  final ownerId = ColumnInt('ownerId');
  final roomId = ColumnInt('roomId');
  final vehicleType = ColumnInt('vehicleType');
  final entryDate = ColumnDateTime('entryDate');
  final updatedDate = ColumnDateTime('updatedDate');

  @override
  List<Column> get columns => [
        id,
        vehicleNo,
        ownerId,
        roomId,
        vehicleType,
        entryDate,
        updatedDate,
      ];
}

@Deprecated('Use VehiclesTable.t instead.')
VehiclesTable tVehicles = VehiclesTable();

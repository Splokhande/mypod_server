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

class District extends TableRow {
  @override
  String get className => 'District';
  @override
  String get tableName => 'district';

  static final t = DistrictTable();

  @override
  int? id;
  late int areaId;
  late int cityId;
  late String district;

  District({
    this.id,
    required this.areaId,
    required this.cityId,
    required this.district,
  });

  District.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    areaId = _data['areaId']!;
    cityId = _data['cityId']!;
    district = _data['district']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'district': district,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'district': district,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'district': district,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'areaId':
        areaId = value;
        return;
      case 'cityId':
        cityId = value;
        return;
      case 'district':
        district = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<District>> find(
    Session session, {
    DistrictExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<District>(
      where: where != null ? where(District.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<District?> findSingleRow(
    Session session, {
    DistrictExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<District>(
      where: where != null ? where(District.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<District?> findById(Session session, int id) async {
    return session.db.findById<District>(id);
  }

  static Future<int> delete(
    Session session, {
    required DistrictExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<District>(
      where: where(District.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    District row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    District row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    District row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    DistrictExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<District>(
      where: where != null ? where(District.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DistrictExpressionBuilder = Expression Function(DistrictTable t);

class DistrictTable extends Table {
  DistrictTable() : super(tableName: 'district');

  @override
  String tableName = 'district';
  final id = ColumnInt('id');
  final areaId = ColumnInt('areaId');
  final cityId = ColumnInt('cityId');
  final district = ColumnString('district');

  @override
  List<Column> get columns => [
        id,
        areaId,
        cityId,
        district,
      ];
}

@Deprecated('Use DistrictTable.t instead.')
DistrictTable tDistrict = DistrictTable();

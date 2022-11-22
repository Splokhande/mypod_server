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

class City extends TableRow {
  @override
  String get className => 'City';
  @override
  String get tableName => 'city';

  static final t = CityTable();

  @override
  int? id;
  late int areaId;
  late String city;

  City({
    this.id,
    required this.areaId,
    required this.city,
  });

  City.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    areaId = _data['areaId']!;
    city = _data['city']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'city': city,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'city': city,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'city': city,
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
      case 'city':
        city = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<City>> find(
    Session session, {
    CityExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<City>(
      where: where != null ? where(City.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<City?> findSingleRow(
    Session session, {
    CityExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<City>(
      where: where != null ? where(City.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<City?> findById(Session session, int id) async {
    return session.db.findById<City>(id);
  }

  static Future<int> delete(
    Session session, {
    required CityExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<City>(
      where: where(City.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    City row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    City row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    City row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    CityExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<City>(
      where: where != null ? where(City.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CityExpressionBuilder = Expression Function(CityTable t);

class CityTable extends Table {
  CityTable() : super(tableName: 'city');

  @override
  String tableName = 'city';
  final id = ColumnInt('id');
  final areaId = ColumnInt('areaId');
  final city = ColumnString('city');

  @override
  List<Column> get columns => [
        id,
        areaId,
        city,
      ];
}

@Deprecated('Use CityTable.t instead.')
CityTable tCity = CityTable();

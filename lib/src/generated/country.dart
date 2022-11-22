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

class Country extends TableRow {
  @override
  String get className => 'Country';
  @override
  String get tableName => 'country';

  static final t = CountryTable();

  @override
  int? id;
  late int areaId;
  late int cityId;
  late int districtId;
  late int stateId;
  late String country;

  Country({
    this.id,
    required this.areaId,
    required this.cityId,
    required this.districtId,
    required this.stateId,
    required this.country,
  });

  Country.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    areaId = _data['areaId']!;
    cityId = _data['cityId']!;
    districtId = _data['districtId']!;
    stateId = _data['stateId']!;
    country = _data['country']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'stateId': stateId,
      'country': country,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'stateId': stateId,
      'country': country,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'stateId': stateId,
      'country': country,
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
      case 'districtId':
        districtId = value;
        return;
      case 'stateId':
        stateId = value;
        return;
      case 'country':
        country = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Country>> find(
    Session session, {
    CountryExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Country>(
      where: where != null ? where(Country.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Country?> findSingleRow(
    Session session, {
    CountryExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Country>(
      where: where != null ? where(Country.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Country?> findById(Session session, int id) async {
    return session.db.findById<Country>(id);
  }

  static Future<int> delete(
    Session session, {
    required CountryExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Country>(
      where: where(Country.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Country row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Country row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Country row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    CountryExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Country>(
      where: where != null ? where(Country.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CountryExpressionBuilder = Expression Function(CountryTable t);

class CountryTable extends Table {
  CountryTable() : super(tableName: 'country');

  @override
  String tableName = 'country';
  final id = ColumnInt('id');
  final areaId = ColumnInt('areaId');
  final cityId = ColumnInt('cityId');
  final districtId = ColumnInt('districtId');
  final stateId = ColumnInt('stateId');
  final country = ColumnString('country');

  @override
  List<Column> get columns => [
        id,
        areaId,
        cityId,
        districtId,
        stateId,
        country,
      ];
}

@Deprecated('Use CountryTable.t instead.')
CountryTable tCountry = CountryTable();

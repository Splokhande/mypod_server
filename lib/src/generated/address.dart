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

class Address extends TableRow {
  @override
  String get className => 'Address';
  @override
  String get tableName => 'address';

  static final t = AddressTable();

  @override
  int? id;
  late int areaId;
  late int wardId;
  late int cityId;
  late int mcId;
  late int districtId;
  late int stateId;
  late int countryId;
  late String fullAddress;
  late String landmark;
  late int pincode;

  Address({
    this.id,
    required this.areaId,
    required this.wardId,
    required this.cityId,
    required this.mcId,
    required this.districtId,
    required this.stateId,
    required this.countryId,
    required this.fullAddress,
    required this.landmark,
    required this.pincode,
  });

  Address.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    areaId = _data['areaId']!;
    wardId = _data['wardId']!;
    cityId = _data['cityId']!;
    mcId = _data['mcId']!;
    districtId = _data['districtId']!;
    stateId = _data['stateId']!;
    countryId = _data['countryId']!;
    fullAddress = _data['fullAddress']!;
    landmark = _data['landmark']!;
    pincode = _data['pincode']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'wardId': wardId,
      'cityId': cityId,
      'mcId': mcId,
      'districtId': districtId,
      'stateId': stateId,
      'countryId': countryId,
      'fullAddress': fullAddress,
      'landmark': landmark,
      'pincode': pincode,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'wardId': wardId,
      'cityId': cityId,
      'mcId': mcId,
      'districtId': districtId,
      'stateId': stateId,
      'countryId': countryId,
      'fullAddress': fullAddress,
      'landmark': landmark,
      'pincode': pincode,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'wardId': wardId,
      'cityId': cityId,
      'mcId': mcId,
      'districtId': districtId,
      'stateId': stateId,
      'countryId': countryId,
      'fullAddress': fullAddress,
      'landmark': landmark,
      'pincode': pincode,
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
      case 'wardId':
        wardId = value;
        return;
      case 'cityId':
        cityId = value;
        return;
      case 'mcId':
        mcId = value;
        return;
      case 'districtId':
        districtId = value;
        return;
      case 'stateId':
        stateId = value;
        return;
      case 'countryId':
        countryId = value;
        return;
      case 'fullAddress':
        fullAddress = value;
        return;
      case 'landmark':
        landmark = value;
        return;
      case 'pincode':
        pincode = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Address>> find(
    Session session, {
    AddressExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Address>(
      where: where != null ? where(Address.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Address?> findSingleRow(
    Session session, {
    AddressExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Address>(
      where: where != null ? where(Address.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Address?> findById(Session session, int id) async {
    return session.db.findById<Address>(id);
  }

  static Future<int> delete(
    Session session, {
    required AddressExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Address>(
      where: where(Address.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Address row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Address row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Address row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    AddressExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Address>(
      where: where != null ? where(Address.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AddressExpressionBuilder = Expression Function(AddressTable t);

class AddressTable extends Table {
  AddressTable() : super(tableName: 'address');

  @override
  String tableName = 'address';
  final id = ColumnInt('id');
  final areaId = ColumnInt('areaId');
  final wardId = ColumnInt('wardId');
  final cityId = ColumnInt('cityId');
  final mcId = ColumnInt('mcId');
  final districtId = ColumnInt('districtId');
  final stateId = ColumnInt('stateId');
  final countryId = ColumnInt('countryId');
  final fullAddress = ColumnString('fullAddress');
  final landmark = ColumnString('landmark');
  final pincode = ColumnInt('pincode');

  @override
  List<Column> get columns => [
        id,
        areaId,
        wardId,
        cityId,
        mcId,
        districtId,
        stateId,
        countryId,
        fullAddress,
        landmark,
        pincode,
      ];
}

@Deprecated('Use AddressTable.t instead.')
AddressTable tAddress = AddressTable();

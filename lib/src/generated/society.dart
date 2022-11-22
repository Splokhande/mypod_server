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

class Society extends TableRow {
  @override
  String get className => 'Society';
  @override
  String get tableName => 'society';

  static final t = SocietyTable();

  @override
  int? id;
  late String socName;
  late String socRegNo;
  late int socAddressId;
  late int totalRoom;
  late int totalBlock;
  late int totalShop;
  late List<int> totalFloor;
  late List<int> maxRoomsEachFloor;
  late double latitude;
  late double longitude;
  late String landmark;

  Society({
    this.id,
    required this.socName,
    required this.socRegNo,
    required this.socAddressId,
    required this.totalRoom,
    required this.totalBlock,
    required this.totalShop,
    required this.totalFloor,
    required this.maxRoomsEachFloor,
    required this.latitude,
    required this.longitude,
    required this.landmark,
  });

  Society.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    socName = _data['socName']!;
    socRegNo = _data['socRegNo']!;
    socAddressId = _data['socAddressId']!;
    totalRoom = _data['totalRoom']!;
    totalBlock = _data['totalBlock']!;
    totalShop = _data['totalShop']!;
    totalFloor = _data['totalFloor']!.cast<int>();
    maxRoomsEachFloor = _data['maxRoomsEachFloor']!.cast<int>();
    latitude = _data['latitude']!;
    longitude = _data['longitude']!;
    landmark = _data['landmark']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'socName': socName,
      'socRegNo': socRegNo,
      'socAddressId': socAddressId,
      'totalRoom': totalRoom,
      'totalBlock': totalBlock,
      'totalShop': totalShop,
      'totalFloor': totalFloor,
      'maxRoomsEachFloor': maxRoomsEachFloor,
      'latitude': latitude,
      'longitude': longitude,
      'landmark': landmark,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'socName': socName,
      'socRegNo': socRegNo,
      'socAddressId': socAddressId,
      'totalRoom': totalRoom,
      'totalBlock': totalBlock,
      'totalShop': totalShop,
      'totalFloor': totalFloor,
      'maxRoomsEachFloor': maxRoomsEachFloor,
      'latitude': latitude,
      'longitude': longitude,
      'landmark': landmark,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'socName': socName,
      'socRegNo': socRegNo,
      'socAddressId': socAddressId,
      'totalRoom': totalRoom,
      'totalBlock': totalBlock,
      'totalShop': totalShop,
      'totalFloor': totalFloor,
      'maxRoomsEachFloor': maxRoomsEachFloor,
      'latitude': latitude,
      'longitude': longitude,
      'landmark': landmark,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'socName':
        socName = value;
        return;
      case 'socRegNo':
        socRegNo = value;
        return;
      case 'socAddressId':
        socAddressId = value;
        return;
      case 'totalRoom':
        totalRoom = value;
        return;
      case 'totalBlock':
        totalBlock = value;
        return;
      case 'totalShop':
        totalShop = value;
        return;
      case 'totalFloor':
        totalFloor = value;
        return;
      case 'maxRoomsEachFloor':
        maxRoomsEachFloor = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      case 'landmark':
        landmark = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Society>> find(
    Session session, {
    SocietyExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Society>(
      where: where != null ? where(Society.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Society?> findSingleRow(
    Session session, {
    SocietyExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Society>(
      where: where != null ? where(Society.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Society?> findById(Session session, int id) async {
    return session.db.findById<Society>(id);
  }

  static Future<int> delete(
    Session session, {
    required SocietyExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Society>(
      where: where(Society.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Society row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Society row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Society row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    SocietyExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Society>(
      where: where != null ? where(Society.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SocietyExpressionBuilder = Expression Function(SocietyTable t);

class SocietyTable extends Table {
  SocietyTable() : super(tableName: 'society');

  @override
  String tableName = 'society';
  final id = ColumnInt('id');
  final socName = ColumnString('socName');
  final socRegNo = ColumnString('socRegNo');
  final socAddressId = ColumnInt('socAddressId');
  final totalRoom = ColumnInt('totalRoom');
  final totalBlock = ColumnInt('totalBlock');
  final totalShop = ColumnInt('totalShop');
  final totalFloor = ColumnSerializable('totalFloor');
  final maxRoomsEachFloor = ColumnSerializable('maxRoomsEachFloor');
  final latitude = ColumnDouble('latitude');
  final longitude = ColumnDouble('longitude');
  final landmark = ColumnString('landmark');

  @override
  List<Column> get columns => [
        id,
        socName,
        socRegNo,
        socAddressId,
        totalRoom,
        totalBlock,
        totalShop,
        totalFloor,
        maxRoomsEachFloor,
        latitude,
        longitude,
        landmark,
      ];
}

@Deprecated('Use SocietyTable.t instead.')
SocietyTable tSociety = SocietyTable();

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

class State extends TableRow {
  @override
  String get className => 'State';
  @override
  String get tableName => 'state';

  static final t = StateTable();

  @override
  int? id;
  late int areaId;
  late int cityId;
  late int districtId;
  late String state;

  State({
    this.id,
    required this.areaId,
    required this.cityId,
    required this.districtId,
    required this.state,
  });

  State.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    areaId = _data['areaId']!;
    cityId = _data['cityId']!;
    districtId = _data['districtId']!;
    state = _data['state']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'state': state,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'state': state,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'state': state,
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
      case 'state':
        state = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<State>> find(
    Session session, {
    StateExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<State>(
      where: where != null ? where(State.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<State?> findSingleRow(
    Session session, {
    StateExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<State>(
      where: where != null ? where(State.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<State?> findById(Session session, int id) async {
    return session.db.findById<State>(id);
  }

  static Future<int> delete(
    Session session, {
    required StateExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<State>(
      where: where(State.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    State row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    State row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    State row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    StateExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<State>(
      where: where != null ? where(State.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef StateExpressionBuilder = Expression Function(StateTable t);

class StateTable extends Table {
  StateTable() : super(tableName: 'state');

  @override
  String tableName = 'state';
  final id = ColumnInt('id');
  final areaId = ColumnInt('areaId');
  final cityId = ColumnInt('cityId');
  final districtId = ColumnInt('districtId');
  final state = ColumnString('state');

  @override
  List<Column> get columns => [
        id,
        areaId,
        cityId,
        districtId,
        state,
      ];
}

@Deprecated('Use StateTable.t instead.')
StateTable tState = StateTable();

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

class Area extends TableRow {
  @override
  String get className => 'Area';
  @override
  String get tableName => 'area';

  static final t = AreaTable();

  @override
  int? id;
  late String area;

  Area({
    this.id,
    required this.area,
  });

  Area.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    area = _data['area']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'area': area,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'area': area,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'area': area,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'area':
        area = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Area>> find(
    Session session, {
    AreaExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Area>(
      where: where != null ? where(Area.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Area?> findSingleRow(
    Session session, {
    AreaExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Area>(
      where: where != null ? where(Area.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Area?> findById(Session session, int id) async {
    return session.db.findById<Area>(id);
  }

  static Future<int> delete(
    Session session, {
    required AreaExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Area>(
      where: where(Area.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Area row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Area row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Area row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    AreaExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Area>(
      where: where != null ? where(Area.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AreaExpressionBuilder = Expression Function(AreaTable t);

class AreaTable extends Table {
  AreaTable() : super(tableName: 'area');

  @override
  String tableName = 'area';
  final id = ColumnInt('id');
  final area = ColumnString('area');

  @override
  List<Column> get columns => [
        id,
        area,
      ];
}

@Deprecated('Use AreaTable.t instead.')
AreaTable tArea = AreaTable();

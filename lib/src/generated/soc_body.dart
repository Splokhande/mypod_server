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

class SocBody extends TableRow {
  @override
  String get className => 'SocBody';
  @override
  String get tableName => 'soc_body';

  static final t = SocBodyTable();

  @override
  int? id;
  late int socId;
  late int chairman;
  late int secretary;
  late int treasurer;
  late int viceChairman;
  late int viceSecretary;
  late int viceTreasurer;
  late List<int> members;
  late int year;

  SocBody({
    this.id,
    required this.socId,
    required this.chairman,
    required this.secretary,
    required this.treasurer,
    required this.viceChairman,
    required this.viceSecretary,
    required this.viceTreasurer,
    required this.members,
    required this.year,
  });

  SocBody.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    socId = _data['socId']!;
    chairman = _data['chairman']!;
    secretary = _data['secretary']!;
    treasurer = _data['treasurer']!;
    viceChairman = _data['viceChairman']!;
    viceSecretary = _data['viceSecretary']!;
    viceTreasurer = _data['viceTreasurer']!;
    members = _data['members']!.cast<int>();
    year = _data['year']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'chairman': chairman,
      'secretary': secretary,
      'treasurer': treasurer,
      'viceChairman': viceChairman,
      'viceSecretary': viceSecretary,
      'viceTreasurer': viceTreasurer,
      'members': members,
      'year': year,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'chairman': chairman,
      'secretary': secretary,
      'treasurer': treasurer,
      'viceChairman': viceChairman,
      'viceSecretary': viceSecretary,
      'viceTreasurer': viceTreasurer,
      'members': members,
      'year': year,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'chairman': chairman,
      'secretary': secretary,
      'treasurer': treasurer,
      'viceChairman': viceChairman,
      'viceSecretary': viceSecretary,
      'viceTreasurer': viceTreasurer,
      'members': members,
      'year': year,
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
      case 'chairman':
        chairman = value;
        return;
      case 'secretary':
        secretary = value;
        return;
      case 'treasurer':
        treasurer = value;
        return;
      case 'viceChairman':
        viceChairman = value;
        return;
      case 'viceSecretary':
        viceSecretary = value;
        return;
      case 'viceTreasurer':
        viceTreasurer = value;
        return;
      case 'members':
        members = value;
        return;
      case 'year':
        year = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SocBody>> find(
    Session session, {
    SocBodyExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<SocBody>(
      where: where != null ? where(SocBody.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocBody?> findSingleRow(
    Session session, {
    SocBodyExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SocBody>(
      where: where != null ? where(SocBody.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocBody?> findById(Session session, int id) async {
    return session.db.findById<SocBody>(id);
  }

  static Future<int> delete(
    Session session, {
    required SocBodyExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<SocBody>(
      where: where(SocBody.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    SocBody row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    SocBody row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    SocBody row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    SocBodyExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<SocBody>(
      where: where != null ? where(SocBody.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SocBodyExpressionBuilder = Expression Function(SocBodyTable t);

class SocBodyTable extends Table {
  SocBodyTable() : super(tableName: 'soc_body');

  @override
  String tableName = 'soc_body';
  final id = ColumnInt('id');
  final socId = ColumnInt('socId');
  final chairman = ColumnInt('chairman');
  final secretary = ColumnInt('secretary');
  final treasurer = ColumnInt('treasurer');
  final viceChairman = ColumnInt('viceChairman');
  final viceSecretary = ColumnInt('viceSecretary');
  final viceTreasurer = ColumnInt('viceTreasurer');
  final members = ColumnSerializable('members');
  final year = ColumnInt('year');

  @override
  List<Column> get columns => [
        id,
        socId,
        chairman,
        secretary,
        treasurer,
        viceChairman,
        viceSecretary,
        viceTreasurer,
        members,
        year,
      ];
}

@Deprecated('Use SocBodyTable.t instead.')
SocBodyTable tSocBody = SocBodyTable();

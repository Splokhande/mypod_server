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

class Rooms extends TableRow {
  @override
  String get className => 'Rooms';
  @override
  String get tableName => 'rooms';

  static final t = RoomsTable();

  @override
  int? id;
  late int socId;
  late int roomNo;
  late String owner;
  late bool onRent;
  late bool onSale;
  late int carpetArea;
  late String roomStructure;
  late bool balcony;
  late bool isOccupied;
  late int totalMembers;
  late bool roomExist;
  late int ownerId;
  late List<int> membersId;
  late List<int> rentalId;

  Rooms({
    this.id,
    required this.socId,
    required this.roomNo,
    required this.owner,
    required this.onRent,
    required this.onSale,
    required this.carpetArea,
    required this.roomStructure,
    required this.balcony,
    required this.isOccupied,
    required this.totalMembers,
    required this.roomExist,
    required this.ownerId,
    required this.membersId,
    required this.rentalId,
  });

  Rooms.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    socId = _data['socId']!;
    roomNo = _data['roomNo']!;
    owner = _data['owner']!;
    onRent = _data['onRent']!;
    onSale = _data['onSale']!;
    carpetArea = _data['carpetArea']!;
    roomStructure = _data['roomStructure']!;
    balcony = _data['balcony']!;
    isOccupied = _data['isOccupied']!;
    totalMembers = _data['totalMembers']!;
    roomExist = _data['roomExist']!;
    ownerId = _data['ownerId']!;
    membersId = _data['membersId']!.cast<int>();
    rentalId = _data['rentalId']!.cast<int>();
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'roomNo': roomNo,
      'owner': owner,
      'onRent': onRent,
      'onSale': onSale,
      'carpetArea': carpetArea,
      'roomStructure': roomStructure,
      'balcony': balcony,
      'isOccupied': isOccupied,
      'totalMembers': totalMembers,
      'roomExist': roomExist,
      'ownerId': ownerId,
      'membersId': membersId,
      'rentalId': rentalId,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'roomNo': roomNo,
      'owner': owner,
      'onRent': onRent,
      'onSale': onSale,
      'carpetArea': carpetArea,
      'roomStructure': roomStructure,
      'balcony': balcony,
      'isOccupied': isOccupied,
      'totalMembers': totalMembers,
      'roomExist': roomExist,
      'ownerId': ownerId,
      'membersId': membersId,
      'rentalId': rentalId,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'roomNo': roomNo,
      'owner': owner,
      'onRent': onRent,
      'onSale': onSale,
      'carpetArea': carpetArea,
      'roomStructure': roomStructure,
      'balcony': balcony,
      'isOccupied': isOccupied,
      'totalMembers': totalMembers,
      'roomExist': roomExist,
      'ownerId': ownerId,
      'membersId': membersId,
      'rentalId': rentalId,
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
      case 'roomNo':
        roomNo = value;
        return;
      case 'owner':
        owner = value;
        return;
      case 'onRent':
        onRent = value;
        return;
      case 'onSale':
        onSale = value;
        return;
      case 'carpetArea':
        carpetArea = value;
        return;
      case 'roomStructure':
        roomStructure = value;
        return;
      case 'balcony':
        balcony = value;
        return;
      case 'isOccupied':
        isOccupied = value;
        return;
      case 'totalMembers':
        totalMembers = value;
        return;
      case 'roomExist':
        roomExist = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      case 'membersId':
        membersId = value;
        return;
      case 'rentalId':
        rentalId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Rooms>> find(
    Session session, {
    RoomsExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Rooms>(
      where: where != null ? where(Rooms.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Rooms?> findSingleRow(
    Session session, {
    RoomsExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Rooms>(
      where: where != null ? where(Rooms.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Rooms?> findById(Session session, int id) async {
    return session.db.findById<Rooms>(id);
  }

  static Future<int> delete(
    Session session, {
    required RoomsExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Rooms>(
      where: where(Rooms.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Rooms row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Rooms row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Rooms row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    RoomsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Rooms>(
      where: where != null ? where(Rooms.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef RoomsExpressionBuilder = Expression Function(RoomsTable t);

class RoomsTable extends Table {
  RoomsTable() : super(tableName: 'rooms');

  @override
  String tableName = 'rooms';
  final id = ColumnInt('id');
  final socId = ColumnInt('socId');
  final roomNo = ColumnInt('roomNo');
  final owner = ColumnString('owner');
  final onRent = ColumnBool('onRent');
  final onSale = ColumnBool('onSale');
  final carpetArea = ColumnInt('carpetArea');
  final roomStructure = ColumnString('roomStructure');
  final balcony = ColumnBool('balcony');
  final isOccupied = ColumnBool('isOccupied');
  final totalMembers = ColumnInt('totalMembers');
  final roomExist = ColumnBool('roomExist');
  final ownerId = ColumnInt('ownerId');
  final membersId = ColumnSerializable('membersId');
  final rentalId = ColumnSerializable('rentalId');

  @override
  List<Column> get columns => [
        id,
        socId,
        roomNo,
        owner,
        onRent,
        onSale,
        carpetArea,
        roomStructure,
        balcony,
        isOccupied,
        totalMembers,
        roomExist,
        ownerId,
        membersId,
        rentalId,
      ];
}

@Deprecated('Use RoomsTable.t instead.')
RoomsTable tRooms = RoomsTable();

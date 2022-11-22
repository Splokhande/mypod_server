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

class SocietyAmenities extends TableRow {
  @override
  String get className => 'SocietyAmenities';
  @override
  String get tableName => 'soc_amenities';

  static final t = SocietyAmenitiesTable();

  @override
  int? id;
  late int socId;
  late bool bikeParking;
  late bool carParking;
  late bool powerBackup;
  late bool securitySystem;
  late bool lift;
  late bool waterSupplyAllDay;
  late bool gym;
  late bool solarEnergy;
  late bool rainwaterHarvesting;
  late bool nearbyHospital;
  late bool nearbySchool;
  late bool nearbyShopping;
  late bool onSitMaintenance;

  SocietyAmenities({
    this.id,
    required this.socId,
    required this.bikeParking,
    required this.carParking,
    required this.powerBackup,
    required this.securitySystem,
    required this.lift,
    required this.waterSupplyAllDay,
    required this.gym,
    required this.solarEnergy,
    required this.rainwaterHarvesting,
    required this.nearbyHospital,
    required this.nearbySchool,
    required this.nearbyShopping,
    required this.onSitMaintenance,
  });

  SocietyAmenities.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    socId = _data['socId']!;
    bikeParking = _data['bikeParking']!;
    carParking = _data['carParking']!;
    powerBackup = _data['powerBackup']!;
    securitySystem = _data['securitySystem']!;
    lift = _data['lift']!;
    waterSupplyAllDay = _data['waterSupplyAllDay']!;
    gym = _data['gym']!;
    solarEnergy = _data['solarEnergy']!;
    rainwaterHarvesting = _data['rainwaterHarvesting']!;
    nearbyHospital = _data['nearbyHospital']!;
    nearbySchool = _data['nearbySchool']!;
    nearbyShopping = _data['nearbyShopping']!;
    onSitMaintenance = _data['onSitMaintenance']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'bikeParking': bikeParking,
      'carParking': carParking,
      'powerBackup': powerBackup,
      'securitySystem': securitySystem,
      'lift': lift,
      'waterSupplyAllDay': waterSupplyAllDay,
      'gym': gym,
      'solarEnergy': solarEnergy,
      'rainwaterHarvesting': rainwaterHarvesting,
      'nearbyHospital': nearbyHospital,
      'nearbySchool': nearbySchool,
      'nearbyShopping': nearbyShopping,
      'onSitMaintenance': onSitMaintenance,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'bikeParking': bikeParking,
      'carParking': carParking,
      'powerBackup': powerBackup,
      'securitySystem': securitySystem,
      'lift': lift,
      'waterSupplyAllDay': waterSupplyAllDay,
      'gym': gym,
      'solarEnergy': solarEnergy,
      'rainwaterHarvesting': rainwaterHarvesting,
      'nearbyHospital': nearbyHospital,
      'nearbySchool': nearbySchool,
      'nearbyShopping': nearbyShopping,
      'onSitMaintenance': onSitMaintenance,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'socId': socId,
      'bikeParking': bikeParking,
      'carParking': carParking,
      'powerBackup': powerBackup,
      'securitySystem': securitySystem,
      'lift': lift,
      'waterSupplyAllDay': waterSupplyAllDay,
      'gym': gym,
      'solarEnergy': solarEnergy,
      'rainwaterHarvesting': rainwaterHarvesting,
      'nearbyHospital': nearbyHospital,
      'nearbySchool': nearbySchool,
      'nearbyShopping': nearbyShopping,
      'onSitMaintenance': onSitMaintenance,
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
      case 'bikeParking':
        bikeParking = value;
        return;
      case 'carParking':
        carParking = value;
        return;
      case 'powerBackup':
        powerBackup = value;
        return;
      case 'securitySystem':
        securitySystem = value;
        return;
      case 'lift':
        lift = value;
        return;
      case 'waterSupplyAllDay':
        waterSupplyAllDay = value;
        return;
      case 'gym':
        gym = value;
        return;
      case 'solarEnergy':
        solarEnergy = value;
        return;
      case 'rainwaterHarvesting':
        rainwaterHarvesting = value;
        return;
      case 'nearbyHospital':
        nearbyHospital = value;
        return;
      case 'nearbySchool':
        nearbySchool = value;
        return;
      case 'nearbyShopping':
        nearbyShopping = value;
        return;
      case 'onSitMaintenance':
        onSitMaintenance = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SocietyAmenities>> find(
    Session session, {
    SocietyAmenitiesExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<SocietyAmenities>(
      where: where != null ? where(SocietyAmenities.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocietyAmenities?> findSingleRow(
    Session session, {
    SocietyAmenitiesExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SocietyAmenities>(
      where: where != null ? where(SocietyAmenities.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocietyAmenities?> findById(Session session, int id) async {
    return session.db.findById<SocietyAmenities>(id);
  }

  static Future<int> delete(
    Session session, {
    required SocietyAmenitiesExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<SocietyAmenities>(
      where: where(SocietyAmenities.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    SocietyAmenities row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    SocietyAmenities row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    SocietyAmenities row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    SocietyAmenitiesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<SocietyAmenities>(
      where: where != null ? where(SocietyAmenities.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SocietyAmenitiesExpressionBuilder = Expression Function(
    SocietyAmenitiesTable t);

class SocietyAmenitiesTable extends Table {
  SocietyAmenitiesTable() : super(tableName: 'soc_amenities');

  @override
  String tableName = 'soc_amenities';
  final id = ColumnInt('id');
  final socId = ColumnInt('socId');
  final bikeParking = ColumnBool('bikeParking');
  final carParking = ColumnBool('carParking');
  final powerBackup = ColumnBool('powerBackup');
  final securitySystem = ColumnBool('securitySystem');
  final lift = ColumnBool('lift');
  final waterSupplyAllDay = ColumnBool('waterSupplyAllDay');
  final gym = ColumnBool('gym');
  final solarEnergy = ColumnBool('solarEnergy');
  final rainwaterHarvesting = ColumnBool('rainwaterHarvesting');
  final nearbyHospital = ColumnBool('nearbyHospital');
  final nearbySchool = ColumnBool('nearbySchool');
  final nearbyShopping = ColumnBool('nearbyShopping');
  final onSitMaintenance = ColumnBool('onSitMaintenance');

  @override
  List<Column> get columns => [
        id,
        socId,
        bikeParking,
        carParking,
        powerBackup,
        securitySystem,
        lift,
        waterSupplyAllDay,
        gym,
        solarEnergy,
        rainwaterHarvesting,
        nearbyHospital,
        nearbySchool,
        nearbyShopping,
        onSitMaintenance,
      ];
}

@Deprecated('Use SocietyAmenitiesTable.t instead.')
SocietyAmenitiesTable tSocietyAmenities = SocietyAmenitiesTable();

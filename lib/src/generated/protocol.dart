/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: depend_on_referenced_packages

library protocol;

// ignore: unused_import
import 'dart:typed_data';
import 'package:serverpod/serverpod.dart';

import 'address.dart';
import 'area.dart';
import 'city.dart';
import 'country.dart';
import 'district.dart';
import 'example_class.dart';
import 'maintainence_charges.dart';
import 'maintenance_book.dart';
import 'rooms.dart';
import 'soc_body.dart';
import 'society.dart';
import 'society_amenities.dart';
import 'state.dart';
import 'user_room.dart';
import 'users.dart';
import 'vehicles.dart';

export 'address.dart';
export 'area.dart';
export 'city.dart';
export 'country.dart';
export 'district.dart';
export 'example_class.dart';
export 'maintainence_charges.dart';
export 'maintenance_book.dart';
export 'rooms.dart';
export 'soc_body.dart';
export 'society.dart';
export 'society_amenities.dart';
export 'state.dart';
export 'user_room.dart';
export 'users.dart';
export 'vehicles.dart';

class Protocol extends SerializationManagerServer {
  static final Protocol instance = Protocol();

  final Map<String, constructor> _constructors = {};
  @override
  Map<String, constructor> get constructors => _constructors;

  final Map<String, String> _tableClassMapping = {};
  @override
  Map<String, String> get tableClassMapping => _tableClassMapping;

  final Map<Type, Table> _typeTableMapping = {};
  @override
  Map<Type, Table> get typeTableMapping => _typeTableMapping;

  Protocol() {
    constructors['Address'] = (Map<String, dynamic> serialization) =>
        Address.fromSerialization(serialization);
    constructors['Area'] = (Map<String, dynamic> serialization) =>
        Area.fromSerialization(serialization);
    constructors['City'] = (Map<String, dynamic> serialization) =>
        City.fromSerialization(serialization);
    constructors['Country'] = (Map<String, dynamic> serialization) =>
        Country.fromSerialization(serialization);
    constructors['District'] = (Map<String, dynamic> serialization) =>
        District.fromSerialization(serialization);
    constructors['Example'] = (Map<String, dynamic> serialization) =>
        Example.fromSerialization(serialization);
    constructors['MaintainenceCharges'] =
        (Map<String, dynamic> serialization) =>
            MaintainenceCharges.fromSerialization(serialization);
    constructors['MaintenanceBook'] = (Map<String, dynamic> serialization) =>
        MaintenanceBook.fromSerialization(serialization);
    constructors['Rooms'] = (Map<String, dynamic> serialization) =>
        Rooms.fromSerialization(serialization);
    constructors['SocBody'] = (Map<String, dynamic> serialization) =>
        SocBody.fromSerialization(serialization);
    constructors['Society'] = (Map<String, dynamic> serialization) =>
        Society.fromSerialization(serialization);
    constructors['SocietyAmenities'] = (Map<String, dynamic> serialization) =>
        SocietyAmenities.fromSerialization(serialization);
    constructors['State'] = (Map<String, dynamic> serialization) =>
        State.fromSerialization(serialization);
    constructors['UserRoom'] = (Map<String, dynamic> serialization) =>
        UserRoom.fromSerialization(serialization);
    constructors['Users'] = (Map<String, dynamic> serialization) =>
        Users.fromSerialization(serialization);
    constructors['Vehicles'] = (Map<String, dynamic> serialization) =>
        Vehicles.fromSerialization(serialization);

    tableClassMapping['address'] = 'Address';
    typeTableMapping[Address] = Address.t;
    tableClassMapping['area'] = 'Area';
    typeTableMapping[Area] = Area.t;
    tableClassMapping['city'] = 'City';
    typeTableMapping[City] = City.t;
    tableClassMapping['country'] = 'Country';
    typeTableMapping[Country] = Country.t;
    tableClassMapping['district'] = 'District';
    typeTableMapping[District] = District.t;
    tableClassMapping['maintainence_charges'] = 'MaintainenceCharges';
    typeTableMapping[MaintainenceCharges] = MaintainenceCharges.t;
    tableClassMapping['maintenance_book'] = 'MaintenanceBook';
    typeTableMapping[MaintenanceBook] = MaintenanceBook.t;
    tableClassMapping['rooms'] = 'Rooms';
    typeTableMapping[Rooms] = Rooms.t;
    tableClassMapping['soc_body'] = 'SocBody';
    typeTableMapping[SocBody] = SocBody.t;
    tableClassMapping['society'] = 'Society';
    typeTableMapping[Society] = Society.t;
    tableClassMapping['soc_amenities'] = 'SocietyAmenities';
    typeTableMapping[SocietyAmenities] = SocietyAmenities.t;
    tableClassMapping['state'] = 'State';
    typeTableMapping[State] = State.t;
    tableClassMapping['user_room'] = 'UserRoom';
    typeTableMapping[UserRoom] = UserRoom.t;
    tableClassMapping['users'] = 'Users';
    typeTableMapping[Users] = Users.t;
    tableClassMapping['vehicles'] = 'Vehicles';
    typeTableMapping[Vehicles] = Vehicles.t;
  }
}

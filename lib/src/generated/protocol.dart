/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'address.dart' as _i2;
import 'area.dart' as _i3;
import 'city.dart' as _i4;
import 'country.dart' as _i5;
import 'district.dart' as _i6;
import 'example_class.dart' as _i7;
import 'maintainence_charges.dart' as _i8;
import 'maintenance_book.dart' as _i9;
import 'members.dart' as _i10;
import 'rooms.dart' as _i11;
import 'soc_body.dart' as _i12;
import 'society.dart' as _i13;
import 'society_amenities.dart' as _i14;
import 'state.dart' as _i15;
import 'user_login.dart' as _i16;
import 'user_room.dart' as _i17;
import 'vehicles.dart' as _i18;
import 'package:mypod_server/src/generated/area.dart' as _i19;
import 'package:mypod_server/src/generated/city.dart' as _i20;
import 'package:mypod_server/src/generated/country.dart' as _i21;
import 'package:mypod_server/src/generated/district.dart' as _i22;
import 'package:mypod_server/src/generated/state.dart' as _i23;
import 'package:mypod_server/src/generated/members.dart' as _i24;
import 'package:serverpod_auth_server/module.dart' as _i25;
import 'package:serverpod/protocol.dart' as _i26;
export 'address.dart';
export 'area.dart';
export 'city.dart';
export 'country.dart';
export 'district.dart';
export 'example_class.dart';
export 'maintainence_charges.dart';
export 'maintenance_book.dart';
export 'members.dart';
export 'rooms.dart';
export 'soc_body.dart';
export 'society.dart';
export 'society_amenities.dart';
export 'state.dart';
export 'user_login.dart';
export 'user_room.dart';
export 'vehicles.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Address) {
      return _i2.Address.fromJson(data, this) as T;
    }
    if (t == _i3.Area) {
      return _i3.Area.fromJson(data, this) as T;
    }
    if (t == _i4.City) {
      return _i4.City.fromJson(data, this) as T;
    }
    if (t == _i5.Country) {
      return _i5.Country.fromJson(data, this) as T;
    }
    if (t == _i6.District) {
      return _i6.District.fromJson(data, this) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data, this) as T;
    }
    if (t == _i8.MaintainenceCharges) {
      return _i8.MaintainenceCharges.fromJson(data, this) as T;
    }
    if (t == _i9.MaintenanceBook) {
      return _i9.MaintenanceBook.fromJson(data, this) as T;
    }
    if (t == _i10.Members) {
      return _i10.Members.fromJson(data, this) as T;
    }
    if (t == _i11.Rooms) {
      return _i11.Rooms.fromJson(data, this) as T;
    }
    if (t == _i12.SocBody) {
      return _i12.SocBody.fromJson(data, this) as T;
    }
    if (t == _i13.Society) {
      return _i13.Society.fromJson(data, this) as T;
    }
    if (t == _i14.SocietyAmenities) {
      return _i14.SocietyAmenities.fromJson(data, this) as T;
    }
    if (t == _i15.State) {
      return _i15.State.fromJson(data, this) as T;
    }
    if (t == _i16.UserLogin) {
      return _i16.UserLogin.fromJson(data, this) as T;
    }
    if (t == _i17.UserRoom) {
      return _i17.UserRoom.fromJson(data, this) as T;
    }
    if (t == _i18.Vehicles) {
      return _i18.Vehicles.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Address?>()) {
      return (data != null ? _i2.Address.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Area?>()) {
      return (data != null ? _i3.Area.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.City?>()) {
      return (data != null ? _i4.City.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Country?>()) {
      return (data != null ? _i5.Country.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.District?>()) {
      return (data != null ? _i6.District.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.MaintainenceCharges?>()) {
      return (data != null
          ? _i8.MaintainenceCharges.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i9.MaintenanceBook?>()) {
      return (data != null ? _i9.MaintenanceBook.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.Members?>()) {
      return (data != null ? _i10.Members.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Rooms?>()) {
      return (data != null ? _i11.Rooms.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.SocBody?>()) {
      return (data != null ? _i12.SocBody.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.Society?>()) {
      return (data != null ? _i13.Society.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.SocietyAmenities?>()) {
      return (data != null ? _i14.SocietyAmenities.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.State?>()) {
      return (data != null ? _i15.State.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.UserLogin?>()) {
      return (data != null ? _i16.UserLogin.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.UserRoom?>()) {
      return (data != null ? _i17.UserRoom.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i18.Vehicles?>()) {
      return (data != null ? _i18.Vehicles.fromJson(data, this) : null) as T;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == List<_i19.Area>) {
      return (data as List).map((e) => deserialize<_i19.Area>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.City>) {
      return (data as List).map((e) => deserialize<_i20.City>(e)).toList()
          as dynamic;
    }
    if (t == List<_i21.Country>) {
      return (data as List).map((e) => deserialize<_i21.Country>(e)).toList()
          as dynamic;
    }
    if (t == List<_i22.District>) {
      return (data as List).map((e) => deserialize<_i22.District>(e)).toList()
          as dynamic;
    }
    if (t == List<_i23.State>) {
      return (data as List).map((e) => deserialize<_i23.State>(e)).toList()
          as dynamic;
    }
    if (t == List<_i24.Members>) {
      return (data as List).map((e) => deserialize<_i24.Members>(e)).toList()
          as dynamic;
    }
    try {
      return _i25.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i26.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i25.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Address) {
      return 'Address';
    }
    if (data is _i3.Area) {
      return 'Area';
    }
    if (data is _i4.City) {
      return 'City';
    }
    if (data is _i5.Country) {
      return 'Country';
    }
    if (data is _i6.District) {
      return 'District';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    if (data is _i8.MaintainenceCharges) {
      return 'MaintainenceCharges';
    }
    if (data is _i9.MaintenanceBook) {
      return 'MaintenanceBook';
    }
    if (data is _i10.Members) {
      return 'Members';
    }
    if (data is _i11.Rooms) {
      return 'Rooms';
    }
    if (data is _i12.SocBody) {
      return 'SocBody';
    }
    if (data is _i13.Society) {
      return 'Society';
    }
    if (data is _i14.SocietyAmenities) {
      return 'SocietyAmenities';
    }
    if (data is _i15.State) {
      return 'State';
    }
    if (data is _i16.UserLogin) {
      return 'UserLogin';
    }
    if (data is _i17.UserRoom) {
      return 'UserRoom';
    }
    if (data is _i18.Vehicles) {
      return 'Vehicles';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i25.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i2.Address>(data['data']);
    }
    if (data['className'] == 'Area') {
      return deserialize<_i3.Area>(data['data']);
    }
    if (data['className'] == 'City') {
      return deserialize<_i4.City>(data['data']);
    }
    if (data['className'] == 'Country') {
      return deserialize<_i5.Country>(data['data']);
    }
    if (data['className'] == 'District') {
      return deserialize<_i6.District>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    if (data['className'] == 'MaintainenceCharges') {
      return deserialize<_i8.MaintainenceCharges>(data['data']);
    }
    if (data['className'] == 'MaintenanceBook') {
      return deserialize<_i9.MaintenanceBook>(data['data']);
    }
    if (data['className'] == 'Members') {
      return deserialize<_i10.Members>(data['data']);
    }
    if (data['className'] == 'Rooms') {
      return deserialize<_i11.Rooms>(data['data']);
    }
    if (data['className'] == 'SocBody') {
      return deserialize<_i12.SocBody>(data['data']);
    }
    if (data['className'] == 'Society') {
      return deserialize<_i13.Society>(data['data']);
    }
    if (data['className'] == 'SocietyAmenities') {
      return deserialize<_i14.SocietyAmenities>(data['data']);
    }
    if (data['className'] == 'State') {
      return deserialize<_i15.State>(data['data']);
    }
    if (data['className'] == 'UserLogin') {
      return deserialize<_i16.UserLogin>(data['data']);
    }
    if (data['className'] == 'UserRoom') {
      return deserialize<_i17.UserRoom>(data['data']);
    }
    if (data['className'] == 'Vehicles') {
      return deserialize<_i18.Vehicles>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i25.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i26.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i2.Address:
        return _i2.Address.t;
      case _i3.Area:
        return _i3.Area.t;
      case _i4.City:
        return _i4.City.t;
      case _i5.Country:
        return _i5.Country.t;
      case _i6.District:
        return _i6.District.t;
      case _i8.MaintainenceCharges:
        return _i8.MaintainenceCharges.t;
      case _i9.MaintenanceBook:
        return _i9.MaintenanceBook.t;
      case _i10.Members:
        return _i10.Members.t;
      case _i11.Rooms:
        return _i11.Rooms.t;
      case _i12.SocBody:
        return _i12.SocBody.t;
      case _i13.Society:
        return _i13.Society.t;
      case _i14.SocietyAmenities:
        return _i14.SocietyAmenities.t;
      case _i15.State:
        return _i15.State.t;
      case _i17.UserRoom:
        return _i17.UserRoom.t;
      case _i18.Vehicles:
        return _i18.Vehicles.t;
    }
    return null;
  }
}

import 'package:mypod_server/import_helper.dart';
import 'package:serverpod/serverpod.dart';

class AreaEndpoint extends Endpoint {
  Future<bool> addArea(Session session, Area area) async {
    await Area.insert(session, area);
    return true;
  }

  Future<List<Area>> getArea(Session session, {String? keyword}) async {
    return await Area.find(session,
        where: (t) => keyword != null ? t.area.like(keyword) : Constant(true));
  }

  Future<bool> updateArea(Session session, Area area) async {
    bool result = await Area.update(session, area);
    return result;
  }

  Future<bool> deleteArea(Session session, int id) async {
    int result = await Area.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}

import 'package:mypod_server/src/generated/members.dart';
import 'package:serverpod/serverpod.dart';
import 'package:mypod_server/import_helper.dart';

class MembersEndpoint extends Endpoint {
  Future<List<Members>> getMembers(Session session, {String? keyword}) async {
    return await Members.find(session,
        where: (t) =>
            keyword != null ? t.name.like('%$keyword%') : Constant(true));
  }

  Future<bool> addMembers(Session session, Members users) async {
    await Members.insert(session, users);
    return true;
  }

  Future<bool> updateMembers(Session session, Members user) async {
    bool result = await Members.update(session, user);
    return result;
  }

  Future<bool> deleteMembers(Session session, int id) async {
    var result = await Members.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}

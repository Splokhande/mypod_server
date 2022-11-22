import 'package:serverpod/serverpod.dart';
import 'package:mypod_server/import_helper.dart';

class UsersEndpoint extends Endpoint {
  Future<List<Users>> getUsers(Session session, {String? keyword}) async {
    return await Users.find(session,
        where: (t) =>
            keyword != null ? t.name.like('%$keyword%') : Constant(true));
  }

  Future<bool> addUsers(Session session, Users users) async {
    await Users.insert(session, users);
    return true;
  }

  Future<bool> updateUsers(Session session, Users user) async {
    bool result = await Users.update(session, user);
    return result;
  }

  Future<bool> deleteUsers(Session session, int id) async {
    var result = await Users.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}

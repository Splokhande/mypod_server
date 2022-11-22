/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/example_endpoint.dart';
import '../endpoints/user_endpoint.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'example': ExampleEndpoint()..initialize(server, 'example', null),
      'users': UsersEndpoint()..initialize(server, 'users', null),
    };

    connectors['example'] = EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': MethodConnector(
          name: 'hello',
          params: {
            'name': ParameterDescription(
                name: 'name', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['example'] as ExampleEndpoint).hello(
              session,
              params['name'],
            );
          },
        ),
      },
    );

    connectors['users'] = EndpointConnector(
      name: 'users',
      endpoint: endpoints['users']!,
      methodConnectors: {
        'getUsers': MethodConnector(
          name: 'getUsers',
          params: {
            'keyword': ParameterDescription(
                name: 'keyword', type: String, nullable: true),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['users'] as UsersEndpoint).getUsers(
              session,
              keyword: params['keyword'],
            );
          },
        ),
        'addUsers': MethodConnector(
          name: 'addUsers',
          params: {
            'users': ParameterDescription(
                name: 'users', type: Users, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['users'] as UsersEndpoint).addUsers(
              session,
              params['users'],
            );
          },
        ),
        'updateUsers': MethodConnector(
          name: 'updateUsers',
          params: {
            'user': ParameterDescription(
                name: 'user', type: Users, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['users'] as UsersEndpoint).updateUsers(
              session,
              params['user'],
            );
          },
        ),
        'deleteUsers': MethodConnector(
          name: 'deleteUsers',
          params: {
            'id': ParameterDescription(name: 'id', type: int, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['users'] as UsersEndpoint).deleteUsers(
              session,
              params['id'],
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}

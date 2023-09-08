import 'package:depaul_campus_connect/data/api/depaul_campus_connect_api.dart';
import 'package:depaul_campus_connect/domain/models/courses.dart';
import 'package:depaul_campus_connect/domain/models/user.dart';

class DePaulCampusConnectRepository implements DePaulCampusConnectApi {
  final DePaulCampusConnectApi api;

  DePaulCampusConnectRepository(this.api);

  @override
  Future<List<User>> getUsers() async {
    return await api.getUsers();
  }

  @override
  Future<List<Courses>> getCourses() async {
    return await api.getCourses();
  }
}

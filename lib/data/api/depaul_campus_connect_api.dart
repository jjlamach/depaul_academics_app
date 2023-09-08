import 'package:depaul_campus_connect/domain/models/courses.dart';
import 'package:depaul_campus_connect/domain/models/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'depaul_campus_connect_api.g.dart';

@RestApi(baseUrl: 'https://mockend.com/api/jjlamach/depaul_academics_app/')
abstract class DePaulCampusConnectApi {
  factory DePaulCampusConnectApi(
    Dio dio, {
    String baseUrl,
  }) = _DePaulCampusConnectApi;

  @GET('/users')
  Future<List<User>> getUsers();

  @GET('/courses')
  Future<List<Courses>> getCourses();
}

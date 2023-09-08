import 'package:depaul_campus_connect/data/repositories/depaul_campus_connect_repository.dart';
import 'package:depaul_campus_connect/domain/models/courses.dart';

class GetCoursesUseCase {
  final DePaulCampusConnectRepository _repository;
  const GetCoursesUseCase(this._repository);

  Future<List<Courses>> getCourses() async {
    return await _repository.getCourses();
  }
}

import 'package:depaul_campus_connect/data/repositories/depaul_campus_connect_repository.dart';
import 'package:depaul_campus_connect/domain/models/user.dart';

class GetUsersUseCase {
  final DePaulCampusConnectRepository _repository;

  const GetUsersUseCase(this._repository);

  Future<List<User>> getUsers() async {
    return await _repository.getUsers();
  }
}

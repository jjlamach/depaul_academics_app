import 'package:depaul_campus_connect/data/repositories/depaul_campus_connect_repository.dart';
import 'package:depaul_campus_connect/domain/models/user.dart';

class GetUsersUseCase {
  final DePaulCampusConnectRepository repository;

  const GetUsersUseCase(this.repository);

  Future<List<User>> getUsers() async {
    return await repository.getUsers();
  }
}

import 'package:depaul_campus_connect/domain/models/user.dart';
import 'package:depaul_campus_connect/domain/usecase/get_users_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'professors_cubit.freezed.dart';

class ProfessorCubit extends Cubit<ProfessorState> {
  final GetUsersUseCase _useCase;
  ProfessorCubit(this._useCase) : super(const _Loading());

  void getProfessors() async {
    try {
      final response = await _useCase.getUsers();
      emit(const ProfessorState.loading());
      emit(ProfessorState.loaded(response));
    } on Exception catch (e) {
      emit(ProfessorState.error(e));
    }
  }
}

@freezed
class ProfessorState with _$ProfessorState {
  const factory ProfessorState.loading() = _Loading;
  const factory ProfessorState.loaded(List<User> professors) = _Loaded;
  const factory ProfessorState.error(Exception exception) = _Error;
}

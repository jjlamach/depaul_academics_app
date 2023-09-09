import 'package:depaul_campus_connect/app/screens/professors/bloc/professors_cubit.dart';
import 'package:depaul_campus_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfessorsPage extends StatelessWidget {
  const ProfessorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfessorCubit>(
      create: (context) => getIt<ProfessorCubit>()..getProfessors(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: BlocBuilder<ProfessorCubit, ProfessorState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (professors) => ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox();
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10.0,
              ),
              itemCount: professors.length,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}

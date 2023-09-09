import 'package:depaul_campus_connect/app/screens/courses/bloc/courses_cubit.dart';
import 'package:depaul_campus_connect/app/screens/courses/courses_page.dart';
import 'package:depaul_campus_connect/app/screens/home/home_page.dart';
import 'package:depaul_campus_connect/app/screens/professors/bloc/professors_cubit.dart';
import 'package:depaul_campus_connect/app/screens/professors/professors_page.dart';
import 'package:depaul_campus_connect/app/screens/signIn/sign_in_page.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:depaul_campus_connect/data/api/depaul_campus_connect_api.dart';
import 'package:depaul_campus_connect/data/repositories/depaul_campus_connect_repository.dart';
import 'package:depaul_campus_connect/domain/usecase/get_courses_usecase.dart';
import 'package:depaul_campus_connect/domain/usecase/get_users_usecase.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as FirebaseUIAuth;
import 'package:get_it/get_it.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(14, 65, 115, 1),
);

final getIt = GetIt.instance;

void setUpUseCases() {
  getIt.registerFactory(() => GetCoursesUseCase(getIt.get()));
  getIt.registerFactory(() => GetUsersUseCase(getIt.get()));
}

void setUpDependencies() {
  getIt.registerSingleton(Dio());
  getIt.registerFactory(() => DePaulCampusConnectApi(getIt.get()));
  getIt.registerFactory(() => DePaulCampusConnectRepository(getIt.get()));
}

void setUpBlocsAndCubits() {
  getIt.registerFactory(() => CoursesCubit(getIt.get()));
  getIt.registerFactory(() => ProfessorCubit(getIt.get()));
}

void setUp() {
  setUpDependencies();
  setUpUseCases();
  setUpBlocsAndCubits();
}

Future<FirebaseApp> setUpFirebase() async {
  return await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: "depaul-campus-connect",
  );
}

void setUpAuthProviders() {
  FirebaseUIAuth.FirebaseUIAuth.configureProviders([
    FirebaseUIAuth.EmailAuthProvider(),
  ]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpFirebase();
  setUpAuthProviders();
  setUp();
  runApp(
    const DePaulUCampusConnect(),
  );
}

class DePaulUCampusConnect extends StatelessWidget {
  const DePaulUCampusConnect({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini DU Campus Connect',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.borderRadius),
          ),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(15.0)),
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(14, 65, 115, 1),
            ),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontSize: 20,
              ),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimens.borderRadius),
                ),
              ),
            ),
          ),
        ),
        colorScheme: kColorScheme,
        useMaterial3: true,
      ),
      routes: {
        "/": (context) {
          return const SignInPage();
        },
        "/home": (context) => const HomePage(),
        "/courses": (context) => const CoursesPage(),
        "/professors": (context) => const ProfessorsPage(),
      },
      // home: const HomePage(),
    );
  }
}

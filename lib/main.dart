import 'package:depaul_campus_connect/app/screens/home/home_page.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as FirebaseUIAuth;
import 'firebase_options.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(14, 65, 115, 1),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpFirebase();
  setUpAuthProviders();
  runApp(
    const DePaulUCampusConnect(),
  );
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

class DePaulUCampusConnect extends StatelessWidget {
  const DePaulUCampusConnect({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini DU Campus Connect',
      theme: ThemeData(
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
      home: const HomePage(),
    );
  }
}

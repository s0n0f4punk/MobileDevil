import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job/database/firebaseAuth/users_service.dart';
import 'package:flutter_job/routes/routes.dart';
import 'package:flutter_job/themes/darkTheme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCITDOtz7RURPjZjyoFAvtnZ0yx8oK_BP0",
    appId: "1:22689488757:android:1a89d8e21bbb00aaf9fd3c",
    messagingSenderId: "22689488757",
    projectId: "flutterjob-ebf02",
    storageBucket: "flutterjob-ebf02.appspot.com",
  ));
  runApp(const ThemeAppMaterial());
}

class ThemeAppMaterial extends StatelessWidget {
  const ThemeAppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        initialData: null,
        value: AuthService().currentUser,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: dark,
          initialRoute: '/',
          routes: routes,
        ));
  }
}

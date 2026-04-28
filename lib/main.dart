import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/core/utils/app_router.dart';
import 'package:fruithup_dashboard/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(FruitHupDashboard());
}

class FruitHupDashboard extends StatelessWidget {
  const FruitHupDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       builder: (context, child) {
        return GestureDetector(
          onTap: () {
            // This removes focus and hides the cursor/keyboard globally
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'FruitHup Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: appRouter,
    );
  }
}

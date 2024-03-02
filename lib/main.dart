import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_stack_ecommerce/constants/global_var.dart';
import 'package:full_stack_ecommerce/features/auth/screens/auth_screen.dart';
import 'package:full_stack_ecommerce/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Amazon Clone",
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge:
              TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.textH1),
          displayMedium:
              TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.textH2),
          displaySmall:
              TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.textH3),
          bodyLarge: TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.body1),
          bodyMedium: TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.body2),
          bodySmall: TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.body3),
          headlineLarge:
              TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.par1),
          headlineMedium:
              TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.par2),
          headlineSmall:
              TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.par3),
          titleLarge: TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.par4),
          titleMedium: TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.par5),
          titleSmall: TextStyle(fontFamily: 'Inter', fontSize: GlobalVar.par6),
        ),
        scaffoldBackgroundColor: GlobalVar.darkShade1,
        colorScheme: const ColorScheme.dark(primary: GlobalVar.activeColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll(GlobalVar.activeColor),
            overlayColor:
                MaterialStatePropertyAll(GlobalVar.white.withOpacity(0.3)),
            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
          ),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStatePropertyAll(10),
            fixedSize: MaterialStatePropertyAll(Size(55, 55)),
            backgroundColor: MaterialStatePropertyAll(GlobalVar.iconBgColor),
          ),
        ),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(
              fontSize: GlobalVar.textH2,
            )),
      ),
      onGenerateRoute: generateRoute,
      home: const AuthScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amazon"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AuthScreen.routeName);
              },
              child: const Text("Amazon"),
            ),
          ],
        ),
      ),
    );
  }
}

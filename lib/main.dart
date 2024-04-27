import 'package:flutter/material.dart';
import 'package:startup_sathi/providers/user_provider.dart';
import 'package:startup_sathi/screens/co_founder.dart';
import 'package:startup_sathi/screens/home_screen.dart';
import 'package:startup_sathi/screens/login_screen.dart';
import 'package:startup_sathi/screens/signup_screen.dart';
import 'package:startup_sathi/screens/startup_screen.dart';
import 'package:startup_sathi/services/auth_services.dart';
import 'package:startup_sathi/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: Provider.of<UserProvider>(context).user.token.isEmpty
          ? const LoginScreen()
          : const HomeScreen(),
      routes: {
        '/log-in': (context) => const LoginScreen(),
        '/sign-up': (context) => const SignUpScreen(),
        '/home': (context) => const HomeScreen(),
        '/cofounder': (context) => const CoFounderScreen(),
        '/startup': (context) => const StartUpScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:startup_sathi/providers/user_provider.dart';
import 'package:startup_sathi/services/auth_services.dart';
import 'package:startup_sathi/widgets/gradient_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void signOutUser(BuildContext context) {
    AuthService().signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(user.email),
            Text(user.name),
            const SizedBox(
              height: 20,
            ),
            AuthGradientButton(
              buttonText: "Sign out",
              onPressed: () => signOutUser(context),
            )
          ],
        ),
      ),
    );
  }
}

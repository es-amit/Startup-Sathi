import 'package:flutter/material.dart';
import 'package:startup_sathi/services/auth_services.dart';
import 'package:startup_sathi/widgets/gradient_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void signOutUser(BuildContext context) {
    AuthService().signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => signOutUser(context),
            icon: const Icon(
              Icons.login,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            AuthGradientButton(
              buttonText: "Looking For StartUp",
              onPressed: () {
                Navigator.of(context).pushNamed('/startup');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            AuthGradientButton(
              buttonText: "Looking For Co-Founder",
              onPressed: () {
                Navigator.of(context).pushNamed('/cofounder');
              },
            ),
          ],
        ),
      ),
    );
  }
}

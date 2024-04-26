import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:startup_sathi/providers/user_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(user.email),
            Text(user.name),
            Text(user.id),
            Text(user.password),
            Text(user.token),
          ],
        ),
      ),
    );
  }
}

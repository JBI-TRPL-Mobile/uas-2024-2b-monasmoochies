import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Email"),
              onChanged: authProvider.setEmail,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(hintText: "Password"),
              obscureText: true,
              onChanged: authProvider.setPassword,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                bool success = await authProvider.login();
                final message = success
                    ? "Login Berhasil"
                    : "Email atau Password salah";
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

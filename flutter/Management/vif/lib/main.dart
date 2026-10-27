import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('This is our App'),
            Text('Welcome back !'),
            Text("Login to Continue"),

            SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Login Clicked')),
                  );
                },
                child: Text('Login'),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
}

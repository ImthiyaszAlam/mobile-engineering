import 'package:flutter/material.dart';
import 'package:tmitra/api/api_service.dart';
import 'package:tmitra/screens/dashbord_screen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Loginscreen> {
  final apiService = ApiService();

  bool isLoading = false;

  final mobileController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: mobileController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),

            const SizedBox(height: 16),

            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              obscureText: true,
            ),

            const SizedBox(height: 32),

            SizedBox(
              height: 50,
              width: double.infinity,

              child: ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        final mobile = mobileController.text;
                        final password = passwordController.text;

                        setState(() {
                          isLoading = true;
                        });

                        try {
                          final response = await apiService.login(
                            mobile,
                            password,
                          );

                          print('Name: ${response.user.fullname}');
                          print('Role: ${response.user.role}');
                          print('Access Token: ${response.access}');
                          print('Refresh Token: ${response.refresh}');

                          if (!mounted) return;

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  DashbordScreen(),
                            ),
                          );
                        } catch (e) {
                          print('Login Error: $e');
                        } finally {
                          if (mounted) {
                            setState(() {
                              isLoading = false;
                            });
                          }
                        }
                      },

                child: isLoading
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

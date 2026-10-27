import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [

              Text(
                'Profile Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person_2_outlined),
              ),

              const SizedBox(height: 12),
              Text(
                'My Name',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge
                    ?.copyWith(color: Colors.black),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

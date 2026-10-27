import 'package:flutter/material.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

  final users = const ['Imthiyas', 'Alam', 'Rahul', 'Amit'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: users.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  return Card(child: Center(child: Text(users[index])));
                },
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(child: Text(users[index])),
                    ),
                  );
                },
              ),
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3,
                children: [
                  Card(child: Center(child: const Text('Card 1'))),
                  Card(child: Center(child: const Text('Card 1'))),
                  Card(child: Center(child: const Text('Card 1'))),
                  Card(child: Center(child: const Text('Card 1'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/User.dart';

class Listscreen extends StatelessWidget {
  Listscreen({super.key});

  final List<User> users = [
    User(name: "Arjun", age: 23),
    User(name: "Rahul", age: 27),
    User(name: "Sneha", age: 22),
    User(name: "Amit", age: 29),
    User(name: "Priya", age: 24),
    User(name: "Karthik", age: 26),
    User(name: "Neha", age: 21),
    User(name: "Vikram", age: 31)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListScreen"), centerTitle: true),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(user.name),
              subtitle: Text("Age: ${user.age}"),
              autofocus: true,
              onTap: () {
                print(user.name);
              },
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Forms')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Mobile',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),


              SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit Form'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

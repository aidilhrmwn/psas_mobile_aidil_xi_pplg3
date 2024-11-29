import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  final String email;

  SuccessPage({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 25, 184, 78),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Berhasil Login!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Selamat datang, $email',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, 
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                child: Text('Kembali ke Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color.fromARGB(255, 41, 122, 44), 
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
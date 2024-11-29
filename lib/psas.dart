import 'package:flutter/material.dart';
import 'package:psas_mobile_aidil_xi_pplg3/success.dart';

class Psas extends StatefulWidget {
  @override
  _PsasState createState() => _PsasState();
}

class _PsasState extends State<Psas> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SuccessPage(email: email)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email atau Password tidak boleh kosong!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Login PSAS'),
        backgroundColor: Color.fromARGB(255, 3, 182, 164),
      ),
      body: Container(
        color: const Color.fromARGB(255, 146, 167, 177),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Text(
              'Selamat Datang!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, 
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            
           
            TextField(
              controller: _emailController,
              style: TextStyle(color: Colors.white), 
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 0, 136, 118), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none, 
                ),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white), 
                hintText: 'Masukkan email Anda',
                hintStyle: TextStyle(color: Colors.white70), 
                prefixIcon: Icon(Icons.email, color: Colors.white), 
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),

          
            TextField(
              controller: _passwordController,
              style: TextStyle(color: Colors.white), 
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 0, 107, 93), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none, 
                ),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white), 
                hintText: 'Masukkan password Anda',
                hintStyle: TextStyle(color: Colors.white70), 
                prefixIcon: Icon(Icons.lock, color: Colors.white), 
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),

            
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 202, 155, 0), 
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(
                  fontSize: 18,
                  decorationColor: Colors.white, 
                ),
              ),
            ),
            SizedBox(height: 10),

            
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fitur "Lupa Password?" belum tersedia.')),
                );
              },
              child: Text(
                'Lupa Password?',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline, 
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
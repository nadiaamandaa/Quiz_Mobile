import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "";
  String _password = "";
  bool isClicked = false;

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  username: _username,
                )
              )
            );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 234, 222, 187), const Color(0xFF442986)],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logo.png',
                  width: 100,
                  height: 100,),
                SizedBox(height: 10), 
                Text("Bank Sampah",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white
                ),
                ),
                SizedBox(height: 60),
                _usernameField(),
                SizedBox(height: 10), 
                _passwordField(),
                SizedBox(height: 20),
                _loginButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      width: 300,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5), 
        child: TextFormField(
          enabled: true,
          onChanged: (value) {
            _username = value;
          },
          decoration: InputDecoration(
              hintText: 'masukkan username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            filled: true,
            fillColor: Colors.white
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      width: 300,
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5), 
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          _password = value;
        },
        decoration: InputDecoration(
          hintText: 'masukkan password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          filled: true,
          fillColor: Colors.white
        ),
      ),
    ));
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: isClicked == true
              ? WidgetStateProperty.all(Colors.green)
              : WidgetStateProperty.all(Colors.deepPurple),
        ),
        onPressed: () {
          if (_password == "mobile") {
            _navigateToHome();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('login berhasil'),
              ),
            );

            setState(() {
              isClicked = !isClicked;
              print(isClicked);
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Login gagal, silahkan coba lagi")
              )
            );
          }
        },
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold,
            fontSize: 18),
        ),
      ),
    );
  }
}
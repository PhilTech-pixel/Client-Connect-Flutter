import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: Text('Login Page'), centerTitle: true),
        body: Column(
          children: [
            Text(
              'Login Here',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your Username',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username required';
                      }
                      return null;
                    },
                  ),
                   TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your Password',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: Text('Login')),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

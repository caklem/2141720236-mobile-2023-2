import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();

  Future<void> insertRecord() async {
    if (name.text != "" ||
        email.text != "" ||
        password.text != "" ||
        rePassword.text != "") {
      try {
        String uri =
            "http://localhost/flutterapi/pratice_api/insert_record.php";

        var res = await http.post(Uri.parse(uri), body: {
          "name": name.text,
          "email": email.text,
          "Password": password.text,
          "re-entry Password": rePassword.text,
        });
        var response = jsonDecode(res.body);
        if (response["success"] == "true") {
          print("Record Inserted");
        } else {
          print("Some issue");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("Please fill all fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF034083),
      appBar: AppBar(
        backgroundColor: const Color(0xFF034083),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Selamat Datang!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Lengkapi data diri Anda',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: 'Masukkan Nama Pengguna',
                      labelStyle: const TextStyle(color: Color(0xFF000000)),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'Masukkan Email',
                      labelStyle: const TextStyle(color: Color(0xFF000000)),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      labelText: 'Masukkan Password',
                      labelStyle: const TextStyle(color: Color(0xFF000000)),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: rePassword,
                    decoration: InputDecoration(
                      labelText: 'Konfirmasi Password',
                      labelStyle: const TextStyle(color: Color(0xFF000000)),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Tindakan yang diambil saat tautan "Lupa Password" ditekan
                    },
                    child: Text(
                      'Lupa Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      insertRecord();
                      // Tindakan yang diambil saat tombol "Daftar" ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(340, 62),
                      backgroundColor: Color(0xFF04A25B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

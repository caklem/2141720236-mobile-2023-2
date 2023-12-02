import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Alvaro Hegel",
      //     style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //   ),
      // ),
      // backgroundColor: Colors.blue,
      body: Container(
        color: Color(0xff034083),
        child: ListView(
          children: [
            Container(
              height: 110,
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Text(
                    "ALVARO HEGEL",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  CircleAvatar(
                    // Ganti dengan widget yang sesuai untuk menampilkan foto profil
                    radius: 30,
                    backgroundColor: Colors.black, // Ubah sesuai kebutuhan
                    backgroundImage: AssetImage('assets/varo.png'), // Tambahkan path gambar profil pengguna
                  ),
                ],
              ),
            ),
            Container(
              height: 570,
              padding: EdgeInsets.only(top: 40, right: 20, left: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Profile',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.contact_mail,
                          color: Colors.green,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'ALVARO HEGEL',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'alvarohegel@gmail.com',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.password,
                          color: Colors.green,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Password',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.password,
                          color: Colors.green,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Konfirmasi Password',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Keluar',
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Tambahkan fungsi untuk menyimpan perubahan
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Simpan'),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Tambahkan fungsi untuk menyimpan perubahan
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.blue,
                  //     onPrimary: Colors.white,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  //   child: Text('Simpan'),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

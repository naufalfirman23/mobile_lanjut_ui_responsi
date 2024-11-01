import 'package:flutter/material.dart';
import 'package:tugas_responsi/const/cfont.dart';
import 'package:tugas_responsi/pages/mainPage.dart'; // Pastikan Anda sudah memiliki halaman Home

class LupaPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'assets/img/logo.png', // Path logo
                width: 200,
              ),
              SizedBox(height: 20),
              // Text "Lupa Password"
              Text(
                'Lupa Password',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: FontType.poppinsSemi,
                  color: Colors.black,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(height: 20),

              // Bagian Pesan
              Align(
                alignment: Alignment.centerLeft, // Menyelaraskan teks ke kiri
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0), // Menambahkan padding kiri
                  child: Text(
                    "Pesan",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: FontType.poppinsSemi,
                    ),
                  ),
                ),
              ),
              // Kalimat penjelasan
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5.0), // Menambahkan padding untuk jarak
                  child: Text(
                    "Masukan Email Anda dan tunggu Kode Etik dikirimkan.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16, // Ukuran font yang sesuai
                      fontFamily: FontType.poppinsReg, // Gunakan font yang diinginkan
                      color: Colors.black54, // Warna teks yang lebih terang
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              // Input Email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Masukan Email',
                  hintText: 'Masukan Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              
              SizedBox(height: 40),
              // Tombol Kirim
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi untuk mengirim email
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    'Kirim',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

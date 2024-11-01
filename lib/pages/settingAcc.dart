import 'package:flutter/material.dart';
import 'package:tugas_responsi/const/cfont.dart';

class SettingAccountPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 226, 226, 226),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Icon(Icons.supervised_user_circle_rounded, size: 80),
                    Text(
                      "Naufal Firmansyah",
                      style: TextStyle(
                        fontFamily: FontType.poppinsSemi,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Universitas Teknologi Yogyakarta",
                      style: TextStyle(
                        fontFamily: FontType.poppinsReg,
                        fontSize: 7,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Padding vertikal dan horizontal
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Nama",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Padding vertikal dan horizontal
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: "Nomor Telepon",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Padding vertikal dan horizontal
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: "Alamat",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Padding vertikal dan horizontal
                ),
              ),
              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String name = nameController.text;
                  String phone = phoneController.text;
                  String address = addressController.text;

                  print('Email: $email');
                  print('Nama: $name');
                  print('Nomor Telepon: $phone');
                  print('Alamat: $address');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text("Ubah Profile", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

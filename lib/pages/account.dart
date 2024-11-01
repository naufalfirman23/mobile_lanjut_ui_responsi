import 'package:flutter/material.dart';
import 'package:tugas_responsi/const/cfont.dart';
import 'package:tugas_responsi/pages/settingAcc.dart';

class AccountPage extends StatelessWidget {
  
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
                  borderRadius: BorderRadius.circular(8), // Border radius 8
                ),
                child: Column(
                  children: [
                    Icon(Icons.supervised_user_circle_rounded, size: 150,),
                    Text("Naufal Firmansyah", style: TextStyle(
                      fontFamily: FontType.poppinsSemi,
                      fontSize: 16,
                    ),),
                    Text("Universitas Teknologi Yogyakarta", style: TextStyle(
                      fontFamily: FontType.poppinsReg,
                      fontSize: 9,
                    ),),
                  ],
                ),
              ),

              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        minimumSize: Size(double.infinity, 60),
                      ),
                      onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SettingAccountPage()));
                      },
                      child: Text("Kelola Akun"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        minimumSize: Size(double.infinity, 60),
                      ),
                      onPressed: () {
                        // Aksi untuk Notifikasi
                      },
                      child: Text("Notifikasi"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        minimumSize: Size(double.infinity, 60),
                      ),
                      onPressed: () {
                        // Aksi untuk Privacy Policy
                      },
                      child: Text("Privacy Policy"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        minimumSize: Size(double.infinity, 60),
                      ),
                      onPressed: () {
                      },
                      child: Text("Term of Service"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

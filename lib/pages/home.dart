import 'package:flutter/material.dart';
import 'package:tugas_responsi/const/cfont.dart';

class HomePage extends StatelessWidget {
  final List<String> items = [
    "Artis",
    "Artis",
    "Artis",
    "Artis",
    "Artis",
    "Artis",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Guest",
                      style: TextStyle(
                        fontFamily: FontType.poppinsBold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Widget Grid View",
                      style: TextStyle(
                        fontFamily: FontType.poppinsReg,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.identity()..scale(-1.0, 1.0),
                    alignment: Alignment.center,
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/img/produk.jpg',
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            Text(
                              items[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Song",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: FontType.poppinsReg,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Widget List View",
                      style: TextStyle(
                        fontFamily: FontType.poppinsReg,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.identity()..scale(-1.0, 1.0),
                    alignment: Alignment.center,
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 250,
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start, // Ubah ke start untuk menjaga gambar tetap di atas
                        children: [
                          Image.asset(
                            'assets/img/produk.jpg',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10), // Jarak antara gambar dan teks
                          Expanded( // Tambahkan Expanded di sini
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HeadLine",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: FontType.poppinsReg,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                SizedBox(height: 5), // Tambahkan jarak antara HeadLine dan Description
                                Text(
                                  "Description duis aute irure dolor in reprehenderit in voluptate velit.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: FontType.poppinsReg,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

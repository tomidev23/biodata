import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpainaja/repository/screens/home/detail/detailprofile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menggunakan warna latar belakang yang lebih halus dan gradasi modern
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            // Gradasi dari biru sangat muda ke putih kebiruan
            colors: [Color(0xFFE3F2FD), Color(0xFFF8FBFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Biodata Saya",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Colors.blue.shade800,
                    letterSpacing: 0.5,
                  ),
                ),
              ),

              // Foto profil dengan border elegan dan shadow
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.white.withOpacity(0.9), width: 5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade200.withOpacity(0.6),
                      blurRadius: 20,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 70, // Radius sedikit lebih besar
                  backgroundImage: AssetImage('assets/images/zahra.jpeg'),
                ),
              ),

              const SizedBox(height: 35),

              // Card biodata ringkas - menggunakan Card yang lebih tebal
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30), // Radius lebih besar
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.15),
                        blurRadius: 30, // Blur lebih dalam
                        offset: const Offset(0, 15),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Zahrah Sakinah",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade900,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        color: Colors.blue.shade50,
                        thickness: 2,
                        indent: 30,
                        endIndent: 30,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "NIM: 4342411029",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "TRPL 3A Malam",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Teknologi Rekayasa Perangkat Lunak",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.blue.shade600,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(), // Dorong tombol ke bawah
                      
                      // Tombol dengan style yang lebih menonjol
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const DetailProfileScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 8,
                          shadowColor: Colors.blue.shade300.withOpacity(0.7),
                        ),
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                        label: Text(
                          "Lihat Detail Profil",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30), // Spasi di bagian bawah
            ],
          ),
        ),
      ),
    );
  }
}

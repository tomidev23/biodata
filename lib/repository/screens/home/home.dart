import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpainaja/repository/screens/home/detail/detailprofile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  "Profile Saya",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white.withOpacity(0.7),
                    width: 5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.5),
                      blurRadius: 25,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images/siti.jpeg'),
                ),
              ),

              const SizedBox(height: 40),

              Text(
                "Achaika",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent.shade700,
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                color: Colors.black26,
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              const SizedBox(height: 10),
              Text(
                "NIM: 4342411083",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "TRPL 3C Malam",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
             
              const SizedBox(height: 20),

              ElevatedButton(
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
                 
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 8,
                  shadowColor: Colors.pink.shade400.withOpacity(0.6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Detail Profil",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

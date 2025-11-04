import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpainaja/repository/screens/home/detail/detailprofile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background putih bersih
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header section with title
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),

              // Profile picture with new design
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white.withOpacity(0.7),
                    width: 5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade300.withOpacity(0.5),
                      blurRadius: 25,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images/destia.jpeg'),
                ),
              ),

              const SizedBox(height: 40),

              // Card biodata with a new style
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.2),
                      blurRadius: 30,
                      offset: const Offset(0, 15),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Destia",
                      style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: Colors.blue.shade50,
                      thickness: 2,
                      indent: 40,
                      endIndent: 40,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "NIM: 4342411032",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "TRPL 3B Malam",
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
                        shadowColor: Colors.blue.shade400.withOpacity(0.6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Detail Profil",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),            ],
          ),
        ),
      ),
    );
  }
}

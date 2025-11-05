import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProfileScreen extends StatelessWidget {
  const DetailProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: const Color(0xFF000000), 
        elevation: 4,
        centerTitle: true,
        title: Text(
          'Detail Profile',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          _buildHeaderProfile(),
          const SizedBox(height: 20),
          _buildSectionTitle("Personal Info"),
          _buildInfoCard(Icons.badge, "Nim", "4342411083"),
          _buildInfoCard(Icons.school, "Prodi", "Teknologi Rekayasa Perangkat Lunak"),
          _buildInfoCard(Icons.cake, "Tempat, Tanggal Lahir", "Batam, 23 Juni 2006"),
          const SizedBox(height: 20),
          _buildSectionTitle("Kontak & Minat"),
          _buildInfoCard(Icons.home, "Alamat", "Batam Center"),
          _buildInfoCard(Icons.phone, "Kontak", "082289940214"),
          _buildInfoCard(Icons.email, "Email", "sitiacikamustamin2006@gmail.com"),
          _buildInfoCard(Icons.movie, "Hobi", "Nyanyi, Berenang, Marah-Marah"),
          _buildInfoCard(Icons.star, "Cita-cita", "Awalnya bidan eh malah TRPL"),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              shadowColor: Colors.pink.shade200.withOpacity(0.8),
            ),
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Back to Home",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent.withOpacity(0.6),
                blurRadius: 15,
                spreadRadius: 3,
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/siti.jpeg'),
          ),
        ),
        const SizedBox(height: 18),
        Text(
          "Sitiacika Mustamin",
          style: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent.shade700,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Mahasiswa",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // Modern styled card for each profile detail
  Widget _buildInfoCard(IconData icon, String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.shade50.withOpacity(0.5),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.pink.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.pink.shade600, size: 28),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Section title for academic/personal info and other categories
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 12),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.pink.shade700,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProfileScreen extends StatelessWidget {
  const DetailProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F0F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C3E50),
        elevation: 4,
        centerTitle: true,
        title: Text(
          'Profile Detail',
          style: GoogleFonts.lora(
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

          _buildSectionTitle("Academic & Personal Info"),
          _buildInfoCard(Icons.badge, "Student ID", "4342411044"),
          _buildInfoCard(Icons.school, "Program", "Software Engineering (TRPL)"),
          _buildInfoCard(Icons.class_, "Class", "TRPL 3B Night"),
          _buildInfoCard(Icons.cake, "Birth", "Batam, December 12, 2004"),

          const SizedBox(height: 20),

          _buildSectionTitle("Contact & Interests"),
          _buildInfoCard(Icons.home, "Address", "Batam Center"),
          _buildInfoCard(Icons.phone, "Phone", "085668215853"),
          _buildInfoCard(Icons.email, "Email", "destia253@gmail.com"),
          _buildInfoCard(Icons.movie, "Hobby", "Salto"),
          _buildInfoCard(Icons.star, "Dream", "Modom"),

          const SizedBox(height: 40),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              shadowColor: Colors.blue.shade200.withOpacity(0.8),
            ),
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Back to Home",
              style: GoogleFonts.lora(
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
                color: Colors.blue.shade100.withOpacity(0.6),
                blurRadius: 15,
                spreadRadius: 3,
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/destia.jpeg'),
          ),
        ),
        const SizedBox(height: 18),
        Text(
          "Destia",
          style: GoogleFonts.lora(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Student KupuKupu ",
          style: GoogleFonts.lora(
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
            color: Colors.blue.shade50.withOpacity(0.5),
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
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.blue.shade600, size: 28),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.lora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: GoogleFonts.lora(
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
        style: GoogleFonts.lora(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.blue.shade700,
        ),
      ),
    );
  }
}

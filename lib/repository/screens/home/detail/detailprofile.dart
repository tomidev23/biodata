import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProfileScreen extends StatelessWidget {
  const DetailProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF), // Gradasi latar belakang yang lebih halus
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Detail Biodata"',
          style: GoogleFonts.poppins(
            color: Colors.blue.shade800,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.blue.shade700, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          // Bagian Atas: Foto dan Nama (diperbaiki agar lebih terpusat)
          _buildHeaderProfile(),

          const SizedBox(height: 30),

          // Judul Informasi Detail
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 10),
            child: Text(
              "Informasi Akademik & Pribadi",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade700,
              ),
            ),
          ),

          // Card Informasi Detail - menggunakan list untuk konsistensi
          _buildInfoCard(Icons.badge, "NIM", "4342411044"),
          _buildInfoCard(Icons.school, "Program Studi", "Teknologi Rekayasa Perangkat Lunak (TRPL)"),
          _buildInfoCard(Icons.class_, "Kelas", "TRPL 3B MALAM"),
          _buildInfoCard(Icons.cake, "Tempat, Tanggal Lahir", "Batam, 07 OKTOBER 2004"),

          const SizedBox(height: 20),

          // Judul Kontak & Lain-lain
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 10),
            child: Text(
              "Kontak & Minat",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade700,
              ),
            ),
          ),
          
          _buildInfoCard(Icons.home, "Alamat", "SEKUPANG"),
          _buildInfoCard(Icons.phone, "Nomor Telepon", "087727938918"),
          _buildInfoCard(Icons.email, "Email", "davarevaldo0710.com"),
          _buildInfoCard(Icons.movie, "Hobi", "BERMAIN BOLA"),
          _buildInfoCard(Icons.star, "Cita-cita", "Ingin Mempunyai bisnis"),

          const SizedBox(height: 35),

          // Tombol kembali ke beranda
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade600,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 6,
              shadowColor: Colors.blue.shade200.withOpacity(0.8),
            ),
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Kembali ke Beranda",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: Colors.white,
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
                color: Colors.blue.shade100.withOpacity(0.8),
                blurRadius: 15,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('assets/images/dava.jpg'),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Dava Revaldo Saputra",
          style: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Colors.blue.shade900,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          "Mahasiswa Teknologi Rekayasa Perangkat lunak 3B Malam",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // Card bergaya modern untuk tiap item biodata
  Widget _buildInfoCard(IconData icon, String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16), // Mengurangi margin antar card
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18), // Radius sedikit lebih besar
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade50.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.blue.shade600, size: 26),
          ),
          const SizedBox(width: 18),
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
                const SizedBox(height: 2),
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
}

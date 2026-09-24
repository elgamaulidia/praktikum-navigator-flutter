import 'package:flutter/material.dart';
import 'success_perpustakaan.dart';

class DetailPerpustakaan extends StatelessWidget {
  final String judul;
  final String penulis;
  final String stok;

  const DetailPerpustakaan({
    super.key,
    required this.judul,
    required this.penulis,
    required this.stok,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8194D6),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Detail Buku'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Cover buku
            Container(
              width: 125,
              height: 155,
              decoration: BoxDecoration(
                color: const Color(0xFF596175),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pemrograman',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Icon(
                    Icons.flutter_dash,
                    color: Color(0xFF65B7E8),
                    size: 50,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            Text(
              judul,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333),
              ),
            ),

            const SizedBox(height: 14),

            _infoRow(
              Icons.person,
              'Penulis',
              penulis,
            ),

            _infoRow(
              Icons.calendar_month,
              'Tahun Terbit',
              '2024',
            ),

            _infoRow(
              Icons.category,
              'Kategori',
              'Teknologi',
            ),

            _infoRow(
              Icons.description,
              'Deskripsi',
              'Buku ini membahas dasar hingga praktik membangun aplikasi Flutter.',
            ),

            const SizedBox(height: 15),

            Text(
              stok,
              style: const TextStyle(
                color: Color(0xFF65A477),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Pinjam
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessPerpustakaan(
                        judul: judul,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.book),
                label: const Text('Pinjam Buku'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8194D6),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Tombol Kembali
            SizedBox(
              width: double.infinity,
              height: 45,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xFF8194D6),
                  side: const BorderSide(
                    color: Color(0xFF8194D6),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(
      IconData icon,
      String label,
      String value,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 18,
            color: Colors.grey.shade700,
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 85,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Text(': '),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF555555),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
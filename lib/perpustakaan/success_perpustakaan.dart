import 'package:flutter/material.dart';

class SuccessPerpustakaan extends StatelessWidget {
  final String judul;

  const SuccessPerpustakaan({
    super.key,
    required this.judul,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8194D6),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Peminjaman Buku'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ilustrasi buku
              SizedBox(
                height: 150,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: -0.12,
                      child: Container(
                        width: 110,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF8FAED8),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.08,
                      child: Container(
                        width: 110,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD89C87),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.02,
                      child: Container(
                        width: 110,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF83B08B),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 25,
                      bottom: 25,
                      child: Container(
                        width: 58,
                        height: 58,
                        decoration: const BoxDecoration(
                          color: Color(0xFF8DC48E),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Peminjaman Berhasil!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),

              const SizedBox(height: 10),

              Text(
                'Buku "$judul"\nberhasil dipinjam.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                ),
              ),

              const SizedBox(height: 25),

              _dateInfo(
                Icons.calendar_month,
                'Tanggal Pinjam',
                '10 Maret 2026',
              ),

              const SizedBox(height: 10),

              _dateInfo(
                Icons.access_time,
                'Batas Pengembalian',
                '17 Maret 2026',
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.home),
                  label: const Text('Kembali ke Beranda'),
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _dateInfo(
      IconData icon,
      String title,
      String value,
      ) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.grey.shade700,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
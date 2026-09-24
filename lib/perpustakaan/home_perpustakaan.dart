import 'package:flutter/material.dart';
import 'detail_perpustakaan.dart';

class HomePerpustakaan extends StatelessWidget {
  const HomePerpustakaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8194D6),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.menu_book),
            SizedBox(width: 10),
            Text(
              'Perpustakaan Kampus',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _bookCard(
            context,
            judul: 'Pemrograman Flutter',
            penulis: 'Andi Saputra',
            stok: 'Tersedia: 3 Buku',
            coverType: 1,
          ),
          const SizedBox(height: 14),
          _bookCard(
            context,
            judul: 'Dasar Dart',
            penulis: 'Budi Santoso',
            stok: 'Tersedia: 5 Buku',
            coverType: 2,
          ),
          const SizedBox(height: 14),
          _bookCard(
            context,
            judul: 'Desain UI/UX',
            penulis: 'Citra Lestari',
            stok: 'Tersedia: 2 Buku',
            coverType: 3,
          ),
        ],
      ),
    );
  }

  Widget _bookCard(
      BuildContext context, {
        required String judul,
        required String penulis,
        required String stok,
        required int coverType,
      }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _bookCover(coverType),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  penulis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  stok,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF5B9A70),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                SizedBox(
                  width: double.infinity,
                  height: 34,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPerpustakaan(
                            judul: judul,
                            penulis: penulis,
                            stok: stok,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.visibility,
                      size: 16,
                    ),
                    label: const Text(
                      'Lihat Detail',
                      style: TextStyle(fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8194D6),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 5),

          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _bookCover(int type) {
    if (type == 1) {
      return Container(
        width: 72,
        height: 88,
        decoration: BoxDecoration(
          color: const Color(0xFF596175),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pemrograman',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 8,
              ),
            ),
            Text(
              'Flutter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Icon(
              Icons.flutter_dash,
              color: Color(0xFF65B7E8),
              size: 30,
            ),
          ],
        ),
      );
    }

    if (type == 2) {
      return Container(
        width: 72,
        height: 88,
        decoration: BoxDecoration(
          color: const Color(0xFF575757),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DART',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.diamond,
              color: Color(0xFF75A8C5),
              size: 28,
            ),
          ],
        ),
      );
    }

    return Container(
      width: 72,
      height: 88,
      decoration: BoxDecoration(
        color: const Color(0xFF7B6D9E),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Center(
        child: Text(
          'UI/UX',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'home_pages.dart';

class SuccessPage extends StatelessWidget{
  const SuccessPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Success'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Success Pendafataran diterima',
              style: TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
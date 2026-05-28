import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String doctorImage;

  const DetailScreen({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.doctorImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DETAIL DOKTER',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  doctorImage,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator(strokeWidth: 2));
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                        Icons.person,
                        size: 150,
                        color: Color(0xFF1B233A)
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 25),

            Text(
              doctorName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            Text(
              specialty,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Janji dengan $doctorName berhasil dibuat!'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: const Text(
                    'Buat Janji',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
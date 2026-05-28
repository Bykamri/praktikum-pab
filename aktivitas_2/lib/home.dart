import 'package:flutter/material.dart';
import 'detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        'name': 'Poli Umum',
        'icon': Icons.local_hospital,
        'doctor': 'Dr. Andi Pratama',
        'specialty': 'Poli Umum - Ruang 1 (08:00 - 14:00)'
      },
      {
        'name': 'Poli Gigi',
        'icon': Icons.health_and_safety,
        'doctor': 'Drg. Budi Santoso',
        'specialty': 'Spesialis Gigi - Ruang 2 (09:00 - 15:00)'
      },
      {
        'name': 'Poli Anak',
        'icon': Icons.child_care,
        'doctor': 'Dr. Afrizal, Sp.A',
        'specialty': 'Spesialis Anak - Ruang 3 (08:00 - 12:00)'
      },
      {
        'name': 'Laboratorium',
        'icon': Icons.biotech,
        'doctor': 'Dr. Citra, Sp.PK',
        'specialty': 'Patologi Klinik - Lab Pusat (24 Jam)'
      },
      {
        'name': 'Apotek',
        'icon': Icons.medication,
        'doctor': 'Apt. Diana, S.Farm',
        'specialty': 'Apoteker Penanggung Jawab (24 Jam)'
      },
      {
        'name': 'Emergency',
        'icon': Icons.emergency,
        'doctor': 'Dr. Eko UGD',
        'specialty': 'Dokter Jaga UGD (24 Jam)'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('RUMAH SAKIT SEHAT',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.9,
          ),
          itemCount: services.length,
          itemBuilder: (context, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      doctorName: services[index]['doctor'],
                      specialty: services[index]['specialty'],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        services[index]['icon'],
                        size: 50,
                        color: const Color(0xFF1B233A)
                    ),
                    const SizedBox(height: 10),
                    Text(
                      services[index]['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
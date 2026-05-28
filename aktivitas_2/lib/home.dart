import 'package:flutter/material.dart';
import 'detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        'name': 'Poli Umum',
        'image': 'https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Dr. Andi Pratama',
        'specialty': 'Poli Umum - Ruang 1',
        'doctorImage': 'https://images.unsplash.com/photo-1612349317150-e410f624c427?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Poli Gigi',
        'image': 'https://images.unsplash.com/photo-1606811841689-23dfddce3e95?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Drg. Budi Santoso',
        'specialty': 'Spesialis Gigi - Ruang 2',
        'doctorImage': 'https://images.unsplash.com/photo-1537368910025-700350fe46c7?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Poli Anak',
        'image': 'https://images.unsplash.com/photo-1519689680058-324335c77eba?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Dr. Afrizal, Sp.A',
        'specialty': 'Spesialis Anak - Ruang 3',
        'doctorImage': 'https://images.unsplash.com/photo-1622253692010-333f2da6031d?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Laboratorium',
        'image': 'https://images.unsplash.com/photo-1579154204601-01588f351e67?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Dr. Citra, Sp.PK',
        'specialty': 'Patologi Klinik - Lab Pusat',
        'doctorImage': 'https://images.unsplash.com/photo-1594824436998-ef22abf2f6cb?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Apotek',
        'image': 'https://images.unsplash.com/photo-1587854692152-cbe660dbde88?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Apt. Diana, S.Farm',
        'specialty': 'Apoteker Penanggung Jawab',
        'doctorImage': 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Emergency',
        'image': 'https://images.unsplash.com/photo-1587556610434-2e213dc8d129?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Dr. Eko UGD',
        'specialty': 'Dokter Jaga UGD (24 Jam)',
        'doctorImage': 'https://images.unsplash.com/photo-1612349317150-e410f624c427?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Poli Mata',
        'image': 'https://images.unsplash.com/photo-1589828185566-50f0e8f2379d?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Dr. Fajar, Sp.M',
        'specialty': 'Spesialis Mata - Ruang 4',
        'doctorImage': 'https://images.unsplash.com/photo-1537368910025-700350fe46c7?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Poli THT',
        'image': 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Dr. Gita, Sp.THT',
        'specialty': 'Spesialis THT - Ruang 5',
        'doctorImage': 'https://images.unsplash.com/photo-1594824436998-ef22abf2f6cb?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Radiologi',
        'image': 'https://images.unsplash.com/photo-1530497610245-94d3c16cda28?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Dr. Hendra, Sp.Rad',
        'specialty': 'Radiologi & Rontgen - Lantai 1',
        'doctorImage': 'https://images.unsplash.com/photo-1622253692010-333f2da6031d?q=80&w=300&auto=format&fit=crop'
      },
      {
        'name': 'Fisioterapi',
        'image': 'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?q=80&w=300&auto=format&fit=crop',
        'doctor': 'Indah, S.Ft',
        'specialty': 'Rehabilitasi Medik - Lantai 2',
        'doctorImage': 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?q=80&w=300&auto=format&fit=crop'
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
                      doctorImage: services[index]['doctorImage'],
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      services[index]['image'],
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[400],
                          child: const Icon(Icons.wifi_off, size: 50, color: Colors.white),
                        );
                      },
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    Center(
                      child: Text(
                        services[index]['name'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
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
import 'package:flutter/material.dart';

class DokterPenyakitDalamPage extends StatefulWidget {
  const DokterPenyakitDalamPage({super.key});

  @override
  State<DokterPenyakitDalamPage> createState() =>
      _DokterPenyakitDalamPageState();
}

class _DokterPenyakitDalamPageState extends State<DokterPenyakitDalamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/images-2.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Column(
                        children: [
                          const Text(
                            "Dr. Subagyo ",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const Text("Dokter Penyakit Dalam"),
                        ],
                      ),
                      Icon(Icons.favorite, color: Colors.pink),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Jadwal Praktek "),
                      const Text("Jam Singkat "),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Biografi Singkat "),
                      const Text("Hell"),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Icon(Icons.book),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Konfirmasi Janji Temu"),
                            const Text("Cooms"),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Batal'),
                            child: Text("Batal"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: Text("OK"),
                          ),
                        ],
                      ),
                    ),
                    child: Text("Buat Janji Temu"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

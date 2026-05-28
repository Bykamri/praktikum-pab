import 'package:afrizal_0133/dokter_anak_page.dart';
import 'package:afrizal_0133/dokter_jantung_page.dart';
import 'package:afrizal_0133/dokter_pendal_page.dart';
import 'package:afrizal_0133/dokter_umum_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240.0,
              child:  
            DecoratedBox(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/images-1.jpg"), 
                fit: BoxFit.cover
                ), 
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)
                )
            ),
            child: Column(
              children: [
                Text("Hell Nah"),
                Text("P ")
              ],
            ),),
            ),
            SizedBox(height: 80.0,),
            ElevatedButton(onPressed: () {
            Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DokterAnakPage(),
                  ),
                  );
            }, child: Text("Dokter Anak")),
            SizedBox(height: 60.0,),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DokterJantungPage(),
                  ),
                  );
            }, child: Text("Dokter Jantung")),
            SizedBox(height: 60.0,),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DokterPenyakitDalamPage(),
                  ),
                  );
            }, child: Text("Dokter Penyakit Dalam")),
            SizedBox(height: 60.0,),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DokterUmumPage(),
                  ),
                  );
            }, child: Text("Dokter Umum")),
            SizedBox(height: 60.0,),
            
          ],
        ),
      ),
    );
  }
}
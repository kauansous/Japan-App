// ignore_for_file: unused_element, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japan_app/main.dart';

class PantaiApp extends StatelessWidget {
  const PantaiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void Inicio() {
      Navigator.of(context)
          .pop(MaterialPageRoute(builder: (context) => const MyHomePage()));
    }

    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Pantai3.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 44, right: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: Inicio,
                    child: ClipOval(
                      child: Container(
                        width: 37,
                        height: 37,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "<",
                            style: GoogleFonts.inter(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 106,
                  ),
                  Text(
                    "Details",
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                width: 335,
                height: 172,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF3C3C3C).withOpacity(0.3),
                        const Color(0xFFFFFFFF).withOpacity(0.3),
                      ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Pantai Ubud",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(child: Container()),
                          const Icon(
                            Icons.favorite,
                            size: 24,
                            color: Color(0xFFF30000),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Pariwisata Ubud juga di dukung dengan lengkapnya sarana akomodasi, tersedia dari hotel murah sampai resort mewah. Mencari tempat makan juga sangat mudah di Ubud, dan saat ini area pariwisata Ubud sangat terkenal menjadi destinasi wisata Kuliner di Bali.",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

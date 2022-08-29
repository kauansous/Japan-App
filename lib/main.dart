import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japan_app/Components/categories.dart';
import 'package:japan_app/Components/destinasi.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget opcao(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF686868)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 37, left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 31, bottom: 32),
                  child: Row(
                    children: [
                      const Icon(Icons.menu, size: 24),
                      Expanded(child: Container()),
                      ClipOval(
                        child: Container(
                          width: 52,
                          height: 52,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Hey Jono",
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF686868)),
                ),
                const SizedBox(height: 10),
                Text(
                  "Jelajahi dan Temukan\nTempat Favorit mu Di Dunia",
                  style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 38),
                Row(
                  children: [
                    SizedBox(
                      width: 268,
                      height: 48,
                      child: TextField(
                        cursorColor: Colors.black,
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            borderSide: BorderSide(color: Color(0xFF686868)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            borderSide: BorderSide(color: Color(0xFF686868)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 11),
                    Container(
                      width: 56,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B2B2B),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 21),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 69,
                        height: 29,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "All",
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      opcao("Nearby"),
                      opcao("Populer"),
                      opcao("Best Deals"),
                    ],
                  ),
                ),
                const SizedBox(height: 33),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Lihat semua",
                        style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8A8A8A)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 113,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Categories("assets/Danau.png", "Danau"),
                      const SizedBox(
                        width: 17,
                      ),
                      Categories("assets/Gunung.png", "Gunung"),
                      const SizedBox(
                        width: 17,
                      ),
                      Categories("assets/Pantai.png", "Pantai"),
                      const SizedBox(
                        width: 17,
                      ),
                      Categories("assets/Desa.png", "Desa"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Row(
                    children: [
                      Text(
                        "Top Destinasi",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Lihat semua",
                        style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8A8A8A)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 193,                 
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Destinasi("assets/Pantai2.png", "Pantai Ubud", "Bali,indonesia")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

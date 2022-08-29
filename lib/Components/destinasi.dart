// ignore_for_file: non_constant_identifier_names, must_be_immutable, prefer_const_literals_to_create_immutables, unnecessary_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Destinasi extends StatelessWidget {
  String? titledestinasi;
  String? imagedestinasi;
  String? localdestinasi;

  Destinasi(this.imagedestinasi, this.titledestinasi, this.localdestinasi,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 194,
      height: 193,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(imagedestinasi!),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 178,
                height: 48,
                color: const Color(0xFFDCDCDC).withOpacity(0.44),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            titledestinasi!,
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.gps_fixed_rounded,
                                size: 10,
                                color: Colors.white,
                              ),
                              Text(
                                localdestinasi!,
                                style: GoogleFonts.inter(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.favorite,
                        size: 18,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

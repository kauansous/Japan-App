// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  String ? titleCategories;
  String ? ImageCategories;
  Categories(this.ImageCategories,this.titleCategories,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 89,
      height: 113,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(ImageCategories!),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              titleCategories!,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

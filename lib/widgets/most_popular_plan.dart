import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constant.dart';

class SmallMostPopularPlanCard extends StatelessWidget {
  const SmallMostPopularPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    //  double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2A36),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white54),
      ),
      child: Column(
        children: [
          // Most Popular Banner
          Container(
            height: screenHeight * 0.03,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFF5722),
            ),
            child: Center(
              child: SizedBox(
                child: Text(
                  'Most Popular',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Text(
            '03',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                color: Utils.appTextColor,
                fontSize: 25),
          ),
          Text(
            'Months',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                color: Utils.appTextColor,
                fontSize: 15),
          ),

          const Text(
            '----------------',
            style: TextStyle(color: Colors.white),
          ),

          // Price information
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'PKR 27,000\n',
                  style: GoogleFonts.inter(
                    color: Colors.white70,
                    fontSize: 10,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                TextSpan(
                  text: 'PKR 24,000',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create the list of features
  Widget featureItem(String feature, {Color color = Colors.white70}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Icon(Icons.check, color: color, size: 12),
          const SizedBox(width: 4),
          Text(
            feature,
            style: GoogleFonts.inter(
              color: color,
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}

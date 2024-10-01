import 'package:car_dealer_ui/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/button_with_arrow.dart';
import '../widgets/custome_button.dart';
import '../widgets/most_popular_plan.dart';

void main() {
  runApp(const PlanView());
}

class PlanView extends StatelessWidget {
  const PlanView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFF5722),
        body: Stack(
          children: [
            // Background containers
            Column(
              children: [
                // Red container
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.2,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF5722), // Red background color
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.1, top: screenHeight * 0.06),
                    child: Text(
                      'Join us as a \nCar Dealer',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                          color: Utils.appTextColor),
                    ),
                  ),
                ),
                // Dark-blue container
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1E1C29), // Dark-blue background color
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Car image
            Positioned(
              top: screenHeight * 0.15,
              left: screenWidth * 0.25,
              child: Image.asset(
                'assets/images/car.png',
                width: screenWidth * 0.76,
              ),
            ),

            // Text
            Positioned(
              top: screenHeight * 0.35,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: screenWidth * 8,
                  height: screenHeight * 0.35,
                  child: Text(
                    "Our platform is dedicated to car dealers only. \nJoin today to reach million of pakistani buyers, \nWe welcome all kind of car dealers.",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Utils.appTextColor),
                  ),
                ),
              ),
            ),

            // Text
            Positioned(
              top: screenHeight * 0.44,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: screenWidth,
                  height: screenWidth * 0.3,
                  child: Text(
                    "Only Car Dealers can post the ads after subscribing to one of \nour plans below",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Utils.appTextColor),
                  ),
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.49,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Select Plan",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Utils.appTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Plan section
            Positioned(
              top: screenHeight * 0.59,
              left: screenWidth * 0.14,
              right: screenWidth * 0.16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '01',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          color: Utils.appTextColor,
                          fontSize: 25),
                    ),
                  ),
                  Text(
                    '12',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        color: Utils.appTextColor,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Positioned(
                top: screenHeight * 0.63,
                left: screenWidth * 0.1,
                right: screenWidth * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Months',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: Utils.appTextColor,
                            fontSize: 15),
                      ),
                    ),
                    Text(
                      'Months',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          color: Utils.appTextColor,
                          fontSize: 15),
                    ),
                  ],
                )),

            // Plan section
            Positioned(
              top: screenHeight * 0.68,
              left: screenWidth * 0.01,
              right: screenWidth * 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Plan 1
                  buildPlanCard(
                    context,
                    'PKR, 9000',
                    'per month',
                    '✅ Manage Inventory',
                    '✅ Multiple Users',
                    '✅ Unlimated Ads Support',
                    '✅ Free Features ads',
                  ),
                  // Plan 2
                ],
              ),
            ),
            // Plan section
            Positioned(
              top: screenHeight * 0.68,
              left: screenWidth * 0.34,
              right: screenWidth * 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Plan 2
                  buildPlanCard(
                    context,
                    '',
                    '',
                    '✅ Manage Inventory',
                    '✅ Multiple Users',
                    '✅ Unlimated Ads Support',
                    '✅ Free Features ads',
                  ),
                  // Plan 2
                ],
              ),
            ),
            // Plan section

            Positioned(
              top: screenHeight * 0.68,
              left: screenWidth * 0.67,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Plan 3
                  buildPlanCard(
                    context,
                    '',
                    '',
                    '✅ Manage Inventory',
                    '✅ Multiple Users',
                    '✅ Unlimated Ads Support',
                    '✅ Free Features ads',
                  ),
                  // Plan 2
                ],
              ),
            ),
            // Next button
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: ButtonWithArrow(
                  onPressed: () {},
                  text: 'Next',
                ),
              ),
            ),

            //styling line
            Positioned(
              left: screenWidth * 0.06,
              top: screenHeight * 0.66,
              child: const Text(
                '----------------------------',
                style: TextStyle(color: Colors.white),
              ),
            ),

            //stylng line
            Positioned(
              left: screenWidth * 0.65,
              top: screenHeight * 0.66,
              child: const Text(
                '----------------------------',
                style: TextStyle(color: Colors.white),
              ),
            ),

            // select button 1
            Positioned(
              top: screenHeight * 0.81,
              left: screenWidth * 0.05,
              child: CustomButton(
                onPressed: () {},
                text: 'Select',
              ),
            ),
            // select button 2
            Positioned(
              top: screenHeight * 0.81,
              left: screenWidth * 0.38,
              child: CustomButton(
                onPressed: () {},
                text: 'Select',
              ),
            ),
            // select btn 3
            Positioned(
              top: screenHeight * 0.81,
              left: screenWidth * 0.71,
              child: CustomButton(
                onPressed: () {},
                text: 'Select',
              ),
            ),

            Positioned(
                top: screenHeight * 0.54,
                left: screenWidth * 0.35,
                child: SizedBox(
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.19,
                    child: const SmallMostPopularPlanCard())),

            //price

            Positioned(
              top: screenHeight * 0.69,
              left: screenWidth * 0.71,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "PKR 2000\n",
                      style: GoogleFonts.inter(
                        color: Colors.white70,
                        fontSize: 12,
                        decoration: TextDecoration
                            .lineThrough, // Strike-through for original price
                      ),
                    ),
                    TextSpan(
                      text: "PKR 1800",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Plan card builder function
  Widget buildPlanCard(
    BuildContext context,
    String planTitle,
    String planDescription,
    String planPrice,
    String planPrice1,
    String planPrice2,
    String planPrice3,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Utils.appSecondoryColor.withOpacity(0.0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              planTitle,
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          //const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              planDescription,
              style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          //const SizedBox(height: 8),
          Text(
            planPrice,
            style: GoogleFonts.inter(
                fontSize: 8, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Text(
            planPrice1,
            style: GoogleFonts.inter(
                fontSize: 8, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Text(
            planPrice2,
            style: GoogleFonts.inter(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Utils.appTextColor),
          ),
          Text(
            planPrice3,
            style: GoogleFonts.inter(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Utils.appMainColor),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bwa_second_ui/theme/themes.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                bgColorPricingDarkBlue,
                bgColorPricingDarkPurple,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 30),
                Image.asset(
                  'assets/pricing_illustration.png',
                  width: 164,
                ),
                SizedBox(height: 26),
                Text(
                  'Pro Features',
                  style: poppinsSemiBold.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Unlock the winner modules\nand get more insights',
                  style: poppinsRegular.copyWith(
                    color: Color(0xFF7F7FAD),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                Features("Unlock Our Top Charts"),
                Features("Save More than 1,000 Docs"),
                Features("24/7 Customer Support"),
                Features("Track Company’s Spending"),
                SizedBox(height: 50),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 41,
                          width: 41,
                        ),
                        Text(
                          "Subscribe Now",
                          style: poppinsSemiBold.copyWith(
                              color: Colors.white, fontSize: 16),
                        ),
                        Container(
                          height: 41,
                          width: 41,
                          decoration: BoxDecoration(
                            color: btnLightOrangePricing,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 16,
                      primary: btnOrangePricing,
                      shadowColor: btnLightOrangePricing,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Contact Support",
                  style: poppinsRegular.copyWith(
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Features(
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: btnBoldOrangePricing,
            ),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          ),
          SizedBox(width: 12),
          Text(
            text,
            style: poppinsRegular.copyWith(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

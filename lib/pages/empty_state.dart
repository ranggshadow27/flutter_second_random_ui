import 'package:flutter/material.dart';
import 'package:bwa_second_ui/theme/themes.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1B33),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/chart_illustration.png',
              width: 454,
            ),
            SizedBox(
              height: 84,
            ),
            Text(
              "Boost Profit!",
              style: poppinsSemiBold.copyWith(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Our tools are helping business \nto grow much faster",
              style: poppinsLight.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 56,
            ),
            Container(
              height: 65,
              width: 65,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/rating_screen');
                },
                child: Image.asset(
                  'assets/u_rocket.png',
                ),
                style: ElevatedButton.styleFrom(
                  primary: btnBlueEmpty,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
            SizedBox(
              height: 56,
            ),
          ],
        ),
      ),
    );
  }
}

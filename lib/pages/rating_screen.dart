import 'package:flutter/material.dart';
import 'package:bwa_second_ui/theme/themes.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.asset(
                  'assets/office_illustration.png',
                  width: 295,
                ),
                SizedBox(height: 50),
                Text(
                  'Enjoy Your Meal',
                  style: poppinsSemiBold.copyWith(
                    fontSize: 20,
                    color: Color(
                      0xFF121622,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Please rate our experience',
                  style: poppinsRegular.copyWith(
                    fontSize: 16,
                    color: Color(0xFF808EAB),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stars(1),
                    Stars(2),
                    Stars(3),
                    Stars(4),
                    Stars(5),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  style: poppinsRegular.copyWith(
                    fontSize: 14,
                  ),
                  maxLines: 6,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    filled: true,
                    hintText: "Your message",
                    hintStyle: poppinsRegular.copyWith(
                      color: Color(0xFF808EAB),
                      fontSize: 14,
                    ),
                    fillColor: Color(0xFFF8F8F8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/pricing_screen');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      primary: Color(0xFF4074E6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Text(
                      'Submit Review',
                      style: poppinsSemiBold.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Stars(
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Image.asset(
        selectedIndex >= index
            ? 'assets/star_yellow.png'
            : 'assets/star_grey.png',
        width: 40,
      ),
    );
  }
}

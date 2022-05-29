import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jemona_deals/screen/home_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final TextEditingController _fieldOne = TextEditingController();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF694fed), Color(0xFFe70e8a)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width.w,
              height: height * 0.25,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
              child: Text(
                'The OTP has been sent to phone number +91 XXXXXX1234',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
              child: Text(
                'Enter OTP to verify the phone number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 40.w,
                  height: 45.h,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(248, 247, 252, 1),
                  ),
                  child: TextField(
                    style: GoogleFonts.nunitoSans(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    // controller: _fieldTwo,
                    maxLength: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      counterText: '',
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 45.h,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(248, 247, 252, 1),
                  ),
                  child: TextField(
                    style: GoogleFonts.nunitoSans(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    // controller: _fieldTwo,
                    maxLength: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      counterText: '',
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 45.h,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(248, 247, 252, 1),
                  ),
                  child: TextField(
                    style: GoogleFonts.nunitoSans(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    // controller: _fieldTwo,
                    maxLength: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      counterText: '',
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 45.h,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(248, 247, 252, 1),
                  ),
                  child: TextField(
                    style: GoogleFonts.nunitoSans(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    // controller: _fieldTwo,
                    maxLength: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      counterText: '',
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (c) => const HomeScreen());
                Navigator.pushReplacement(context, route);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF27a59b)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(color: Colors.transparent)))),
              child: SizedBox(
                width: 80.w,
                child: const Center(
                  child: Text(
                    'VERIFY',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
              child: Text(
                'Please, verify OTP with in 01:58',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.2,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Terms & conditions',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  color: Colors.white,
                  height: 15,
                  width: 2,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Policies',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  color: Colors.white,
                  height: 15,
                  width: 2,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  color: Colors.white,
                  height: 15,
                  width: 2,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
              child: Text(
                'Copyright @2022 Inttech Technologies Pvt Ltd | Designed by Inttech',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

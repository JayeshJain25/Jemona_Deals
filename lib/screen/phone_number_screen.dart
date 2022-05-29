import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jemona_deals/screen/otp_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
              height: height * 0.4,
            ),
            SizedBox(
              width: 250.w,
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 18, color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 20),
                  hintText: "Enter phone number to get OTP.",
                  hintStyle:
                      GoogleFonts.rubik(color: Colors.white, fontSize: 14),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(Icons.phone, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (c) => const OtpScreen());
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
                width: 110.w,
                child: Row(
                  children: [
                    const Text(
                      'GET OTP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.035,
                    ),
                    const Icon(
                      Icons.forward,
                      color: Colors.white,
                    )
                  ],
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

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF694fed), Color(0xFFe70e8a)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "Orders",
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 20.sp),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              top: 15.h,
            ),
            child: Text(
              "Total Amount: ₹1300",
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
            ),
            child: RichText(
              text: TextSpan(
                text: 'Payment Mode:',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '   COD',
                    style: TextStyle(
                      color: const Color(0xFFaf90f4),
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const Divider(
            color: Color(0xFF292928),
            thickness: 2,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 15.w),
            height: 105.h,
            child: Row(
              children: [
                CachedNetworkImage(
                    imageUrl:
                        "https://media.istockphoto.com/photos/indian-saris-picture-id93355119?k=20&m=93355119&s=612x612&w=0&h=kMbscR-DGsriWycUNtlFU_zlnV_hhc4Zg9C4xt6_eXU=",
                    height: 100.h,
                    width: 110.w,
                    fit: BoxFit.fitHeight),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jamdani Saree #JDB496",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      "1.0 pc",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      "Color: sky",
                      style: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      "₹1300",
                      style: GoogleFonts.rubik(
                        color: const Color(0xFF947fd1),
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: Color(0xFF292928),
            thickness: 2,
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
            ),
            child: Text(
              "Deliverable To:",
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 15.sp,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
            ),
            child: Text(
              "Jayesh Jain - HOME",
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 15.sp,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
            ),
            child: Text(
              "Phone No. 1234567890, C/502, Mumbai, GandiNagar, Maharashtra 200045",
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 15.sp,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            leading: const CircleAvatar(
              child: Text("1"),
            ),
            title: Text(
              "New",
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            ),
            subtitle: Text(
              "26/05/2022 01:24 PM",
              style: GoogleFonts.rubik(
                color: Colors.grey,
                fontSize: 14.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}

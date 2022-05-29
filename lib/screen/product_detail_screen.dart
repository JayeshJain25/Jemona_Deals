import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jemona_deals/screen/cart_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    List<String> sareeImages = [
      "https://media.istockphoto.com/photos/indian-saris-picture-id93355119?k=20&m=93355119&s=612x612&w=0&h=kMbscR-DGsriWycUNtlFU_zlnV_hhc4Zg9C4xt6_eXU=",
      "https://media.istockphoto.com/photos/indian-saris-picture-id93355119?k=20&m=93355119&s=612x612&w=0&h=kMbscR-DGsriWycUNtlFU_zlnV_hhc4Zg9C4xt6_eXU=",
      "https://media.istockphoto.com/photos/indian-saris-picture-id93355119?k=20&m=93355119&s=612x612&w=0&h=kMbscR-DGsriWycUNtlFU_zlnV_hhc4Zg9C4xt6_eXU=",
      "https://media.istockphoto.com/photos/indian-saris-picture-id93355119?k=20&m=93355119&s=612x612&w=0&h=kMbscR-DGsriWycUNtlFU_zlnV_hhc4Zg9C4xt6_eXU="
    ];

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
          "Product",
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 20.sp),
        ),
        actions: [
          Stack(
            children: [
              const SizedBox(
                width: 30,
                height: 30,
              ),
              Positioned(
                top: 15.h,
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 5.h,
                left: 10.w,
                child: Stack(
                  children: const [
                    Icon(
                      Icons.brightness_1,
                      size: 20.0,
                      color: Color(0xFF342700),
                    ),
                    Positioned(
                      top: 1.8,
                      left: 7.0,
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: Color(0xFFcd987e),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              color: Colors.black,
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Orders",
                      style: GoogleFonts.rubik(
                        color: const Color(0xFFbe4079),
                      ),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.rubik(
                        color: const Color(0xFFbe4079),
                      ),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Text(
                      "Policies",
                      style: GoogleFonts.rubik(
                        color: const Color(0xFFbe4079),
                      ),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 3,
                    child: Text(
                      "About Us",
                      style: GoogleFonts.rubik(
                        color: const Color(0xFFbe4079),
                      ),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 4,
                    child: Text(
                      "Contact Us",
                      style: GoogleFonts.rubik(
                        color: const Color(0xFFbe4079),
                      ),
                    ),
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  print("My account menu is selected.");
                } else if (value == 1) {
                  print("Settings menu is selected.");
                } else if (value == 2) {
                  print("Logout menu is selected.");
                }
              }),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              itemCount: 4,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      CachedNetworkImage(
                imageUrl: sareeImages[itemIndex],
                fit: BoxFit.fitHeight,
              ),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                height: 300.h,
                aspectRatio: 2.0,
                initialPage: 1,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "Jamdani Saree #JDB496",
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "In Jamdani",
                style: GoogleFonts.rubik(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: RichText(
                text: TextSpan(
                    text: '₹1300  ',
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '₹2500',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      TextSpan(
                        text: '  (48% off)',
                        style: TextStyle(
                          color: const Color(0xFFaa3f22),
                          fontSize: 15.sp,
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 130.w, top: 5.h),
              child: OutlinedButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: const Color(0xFF131312),
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                            builder: (BuildContext context, StateSetter state) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "Select Choice",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text(
                                  "sky() ₹1300.00",
                                  style: GoogleFonts.nunitoSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF7964bc)),
                                ),
                                leading: Radio<int>(
                                  value: 0,
                                  groupValue: _radioValue,
                                  onChanged: (value) {
                                    state(() {
                                      _radioValue = value!;
                                    });
                                  },
                                  activeColor: const Color(0xFF00608d),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text(
                                  "PINK() ₹1300.00",
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF7964bc),
                                  ),
                                ),
                                leading: Radio<int>(
                                  value: 1,
                                  groupValue: _radioValue,
                                  onChanged: (value) {
                                    state(() {
                                      _radioValue = value!;
                                    });
                                  },
                                  activeColor: const Color(0xFF00608d),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text(
                                  "GREEN() ₹1300.00",
                                  style: GoogleFonts.nunitoSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF7964bc)),
                                ),
                                leading: Radio<int>(
                                  value: 2,
                                  groupValue: _radioValue,
                                  onChanged: (value) {
                                    state(() {
                                      _radioValue = value!;
                                    });
                                  },
                                  activeColor: const Color(0xFF00608d),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text(
                                  "YELLOW() ₹1300.00",
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF7964bc),
                                  ),
                                ),
                                leading: Radio<int>(
                                  value: 3,
                                  groupValue: _radioValue,
                                  onChanged: (value) {
                                    state(() {
                                      _radioValue = value!;
                                    });
                                  },
                                  activeColor: const Color(0xFF00608d),
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(left: 200.w, bottom: 10.h),
                                child: OutlinedButton(
                                  onPressed: () {
                                    Route route = MaterialPageRoute(
                                        builder: (c) => const CartScreen());
                                    Navigator.pushReplacement(context, route);
                                  },
                                  style: OutlinedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(),
                                    side: const BorderSide(
                                      width: 2,
                                      color: Color(0xFFc5247a),
                                    ),
                                  ),
                                  child: const Text(
                                    "    ADD +    ",
                                    style: TextStyle(
                                      color: Color(0xFFc5247a),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                      });
                },
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  side: const BorderSide(
                    width: 2,
                    color: Color(0xFFc5247a),
                  ),
                ),
                child: const Text(
                  "    BUY NOW    ",
                  style: TextStyle(
                    color: Color(0xFFc5247a),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "Descriptions:",
                style: GoogleFonts.rubik(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "PRODUCT CODE: #JDB496",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "NAME: Jamdani Saree",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "WORK / DETAILS: Rongoboti Multi Dhakai Saree (Temple & Ikkat Par)",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "FEBRIC: Linen-Silk",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "BLOUSE PIECE: Not Available",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "SREE SIZE: Running Size",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "STYLE: Wedding / Occasionally",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "SHIPPING CHARGE: Free Shiping",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "CASH ON DELIVERY (COD): Available",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "RETURN POLICY:",
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "1. Shoot Video before Open for Worng Product.",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "2. Shoot Picture and send Us partyculer Dispute or Damages area",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "3. Return or Exchange With out any cause or for any dispute & damage- infrome us by Email or WhatsApp sms within 48 hour's from Time of delivery (t&c apply).",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "4. For Product Return or any other issues contact us by whatsapp sms or Email.",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "Contact Us",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "What's app message-9641925002",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Text(
                "Email ID - jemonadeals@gmail.com",
                style: GoogleFonts.poppins(
                  color: const Color(0xFFdadada),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jemona_deals/screen/order_detail_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

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
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              ListTile(
                onTap: () {
                  Route route = MaterialPageRoute(
                      builder: (c) => const OrderDetailScreen());
                  Navigator.push(context, route);
                },
                title: Row(
                  children: [
                    Text(
                      "Order ID: 108 at 26/05/2022 01:24 PM",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: const Color(0xFFac90f2),
                          )),
                      child: Text(
                        "New",
                        style: GoogleFonts.rubik(
                          color: Colors.grey,
                          fontSize: 12.sp,
                        ),
                      ),
                    )
                  ],
                ),
                subtitle: Text(
                  "₹1300",
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Color(0xFF292928),
                thickness: 2,
              )
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}

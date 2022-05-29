import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _currentHorizontalIntValue = 1;
  // int _currentIndex = 0;

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
            "My Shipping Bag",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 20.sp),
          ),
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15.h, left: 15.w),
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
                                "In Jamdani",
                                style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '₹1300  ',
                                  style: GoogleFonts.nunito(
                                    color: const Color(0xFFab8ef1),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 80.w, top: 5.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Color(0xFFc02d6c),
                                      ),
                                      onPressed: () => setState(() {
                                        final newValue =
                                            _currentHorizontalIntValue - 1;
                                        _currentHorizontalIntValue =
                                            newValue.clamp(0, 10);
                                      }),
                                    ),
                                    Text(
                                      '$_currentHorizontalIntValue',
                                      style: GoogleFonts.nunito(
                                        color: const Color(0xFFab8ef1),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.add,
                                          color: Color(0xFFc02d6c)),
                                      onPressed: () => setState(() {
                                        final newValue =
                                            _currentHorizontalIntValue + 1;
                                        _currentHorizontalIntValue =
                                            newValue.clamp(0, 10);
                                      }),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
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
            Positioned(
              top: 480.h,
              left: 240.w,
              child: InkWell(
                onTap: () {
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
                                  "Price Details",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Total: ₹1300",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Tax & Charges: ₹0",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Grand Total: ₹1300",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
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
                                    "    CONFIRM    ",
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
                child: Container(
                  height: 50.h,
                  width: 120.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    gradient: LinearGradient(
                      colors: [Color(0xFF694fed), Color(0xFFe70e8a)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "₹1300",
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

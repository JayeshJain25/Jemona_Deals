import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jemona_deals/screen/order_screen.dart';
import 'package:jemona_deals/screen/product_detail_screen.dart';
import 'package:jemona_deals/screen/search_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final TextEditingController _fieldOne = TextEditingController();

  List<String> filterName = [
    "All",
    "COTTON SAREE",
    "KURTI",
    "All",
    "COTTON SAREE",
    "KURTI",
    "All",
    "COTTON SAREE",
    "KURTI",
    "KURTI"
  ];

  List<String> saleImages = [
    "https://imgs.search.brave.com/r1H8aq3kde37M3MbsnPdEAe2a4FKw1Gf3_8P-u0QzIk/rs:fit:1100:600:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzVmLzZi/L2IyLzVmNmJiMjll/YzU1NWZkNDlkMzVl/ZTAyNTdlYzFkYTZj/LmpwZw",
    "https://imgs.search.brave.com/r1H8aq3kde37M3MbsnPdEAe2a4FKw1Gf3_8P-u0QzIk/rs:fit:1100:600:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzVmLzZi/L2IyLzVmNmJiMjll/YzU1NWZkNDlkMzVl/ZTAyNTdlYzFkYTZj/LmpwZw",
    "https://imgs.search.brave.com/r1H8aq3kde37M3MbsnPdEAe2a4FKw1Gf3_8P-u0QzIk/rs:fit:1100:600:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzVmLzZi/L2IyLzVmNmJiMjll/YzU1NWZkNDlkMzVl/ZTAyNTdlYzFkYTZj/LmpwZw",
    "https://imgs.search.brave.com/r1H8aq3kde37M3MbsnPdEAe2a4FKw1Gf3_8P-u0QzIk/rs:fit:1100:600:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzVmLzZi/L2IyLzVmNmJiMjll/YzU1NWZkNDlkMzVl/ZTAyNTdlYzFkYTZj/LmpwZw"
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xFF694fed), Color(0xFFe70e8a)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
            ),
            leading: IconButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SearchScreen())),
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
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
                      Route route = MaterialPageRoute(
                          builder: (c) => const OrderScreen());
                      Navigator.push(context, route);
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
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 10.w, top: 10.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                            border: Border.all(
                              color: selectedIndex == index
                                  ? const Color(0xFFcb2376)
                                  : const Color(0xFF6857cf),
                            )),
                        child: Center(
                          child: Text(
                            filterName[index],
                            style: GoogleFonts.rubik(
                                color: selectedIndex == index
                                    ? const Color(0xFFcb2376)
                                    : const Color(0xFF177db7),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20.h,
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider.builder(
              itemCount: 4,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      CachedNetworkImage(
                imageUrl: saleImages[itemIndex],
              ),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 1,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20.h,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((ctx, index) {
              return InkWell(
                onTap: () {
                  Route route = MaterialPageRoute(
                      builder: (c) => const ProductDetailScreen());
                  Navigator.push(context, route);
                },
                child: Container(
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
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '₹2500',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.sp,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  (48% off)',
                                    style: TextStyle(
                                      color: const Color(0xFFaa3f22),
                                      fontSize: 14.sp,
                                    ),
                                  )
                                ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 130.w, top: 5.h),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                side: const BorderSide(
                                  width: 1,
                                  color: Color(0xFFc5247a),
                                ),
                              ),
                              child: const Text(
                                "BUY NOW",
                                style: TextStyle(
                                  color: Color(0xFFc5247a),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }, childCount: 10),
          )
        ],
      ),
    );
  }
}

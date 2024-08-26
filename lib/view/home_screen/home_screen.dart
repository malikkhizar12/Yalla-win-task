import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets_global/coupon_widget.dart';
import '../../widgets_global/custom_end_drawer.dart';
import '../../widgets_global/greeting_card_widget.dart';
import '../../widgets_global/product_card_widget.dart';
import '../../widgets_global/result_card_widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override

  Widget build(BuildContext context) {


    return Scaffold(
      key: _scaffoldKey,
      endDrawer: CustomEndDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
            margin: EdgeInsets.only(left: 13.w),
            child: Image.asset('assets/app_icons/app_icon.jpg')),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black, size: 30),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();

            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6E07D7), Color(0xFFB620E0)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.01, 0.9],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.w), // Adjust padding for responsiveness
          children: [
            SizedBox(height: 40.h),
            Text(
              'BUY PRODUCTS WITH',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'FREE GAMES',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.h),
            buildProductCard(
              'Free Game:',
              'Plain Beige Cap',
              'assets/images/grey_cap.jpg',
              '4.76',
              'Yalla 03',
              context,
            ),
            SizedBox(height: 16.h),
            buildProductCard(
              'Free Game:',
              'Plain Beige Shirt',
              'assets/images/man.jpg',
              '4.76',
              'Yalla 04',
              context,
            ),
            SizedBox(height: 16.h),
            buildProductCard(
              'Free Game:',
              'Plain Beige Shirt',
              'assets/images/pen.jpg',
              '4.76',
              'Yalla 04',
              context,
            ),
            SizedBox(height: 40.h),
            Text(
              'BUY PRODUCTS WITH',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'FREE MEGA PRIZE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.h),
            buildProductCard(
              'Free Game:',
              'Plain Beige Cap',
              'assets/images/grey_cap.jpg',
              '4.76',
              'Yalla 03',
              context,
            ),
            SizedBox(height: 20.h),
            buildProductCard(
              'Free Game:',
              'Plain Beige Cap',
              'assets/images/grey_cap.jpg',
              '4.76',
              'Yalla 03',
              context,
            ),
            SizedBox(height: 20.h),
            buildProductCard(
              'Free Game:',
              'Plain Beige Cap',
              'assets/images/grey_cap.jpg',
              '4.76',
              'Yalla 03',
              context,
            ),
            SizedBox(height: 20.h),
            buildProductCard(
              'Free Game:',
              'Plain Beige Cap',
              'assets/images/grey_cap.jpg',
              '4.76',
              'Yalla 03',
              context,
            ),
            SizedBox(height: 40.h),
            Text(
              'BUY COUPONS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.h),
            Center(
              child: CouponWidget(
                price: '10 AED',
                date: '6 August, 2024',
                quantity: 1,
                onIncrease: () {
                  // Increase quantity logic
                },
                onDecrease: () {
                  // Decrease quantity logic
                },
                onPayNow: () {
                  // Handle Pay Now button click
                },
              ),
            ),
            SizedBox(height: 40.h),
            Text(
              'WINNERS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.h),
            ResultsCard(),
            SizedBox(height: 40.h),
            SizedBox(
              width: 50.0.w,
              height: 50.0.h,
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            GreetingCard(),
            SizedBox(height: 20.h),
            SizedBox(
              width: 50.0.w,
              height: 50.0.h,
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.h),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 0,
        child: const Icon(
          Icons.qr_code,
          color: Colors.black,
          size: 44,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 60.0.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: IconButton(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.dashboard, color: Colors.purple, size: 26),
                      Flexible(
                        child: Text(
                          'Dashboard',
                          style: TextStyle(fontSize: 11.sp), // Adjust the font size to avoid overflow
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.home, color: Colors.purple, size: 26),
                      Flexible(
                        child: Text(
                          'Home',
                          style: TextStyle(fontSize: 11.sp), // Adjust the font size to avoid overflow
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 40.w), // Space for the floating action button
              Flexible(
                child: IconButton(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.attach_money, color: Colors.purple, size: 26),
                      Flexible(
                        child: Text(
                          'DSR',
                          style: TextStyle(fontSize: 11.sp), // Adjust the font size to avoid overflow
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.phone, color: Colors.purple, size: 26),
                      Flexible(
                        child: Text(
                          'Contact Us',
                          style: TextStyle(fontSize: 11.sp), // Adjust the font size to avoid overflow
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

}

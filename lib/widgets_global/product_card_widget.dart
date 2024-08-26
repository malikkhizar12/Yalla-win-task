

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildProductCard(String title, String subtitle, String imagePath, String price, String gameTitle, BuildContext context) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.r),
    ),
    elevation: 4,
    child: Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.h),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [Color(0xFFB620E0), Color(0xFF6E07D7)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.45, 0.6],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(gameTitle, style: TextStyle(color: Colors.purple, fontSize: 24.sp, fontWeight: FontWeight.w800)),
                  Text(subtitle, style: TextStyle(color: Colors.black, fontSize: 15.sp)),
                  Text("Price: $price", style: TextStyle(color: Colors.purple, fontSize: 15.sp)),
                  Text("VAT: 5%", style: TextStyle(color: Colors.purple, fontSize: 15.sp)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: Image.asset(
                      imagePath,
                      height: 118.h,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Select Quantity",
                style: TextStyle(color: Colors.black, fontSize: 15.sp),
              ),
              Padding(
                padding: EdgeInsets.only(right: 35.w),
                child: Container(
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 30.w,
                        decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1.w)),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove, color: Colors.black, size: 16.sp),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 30.w,
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1.w)),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add, color: Colors.black, size: 16.sp),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(width: 25.w),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text('View Details', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreetingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image at the top
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0)
              ),
              child: Image.asset(
                'assets/images/usama.jpg', // Replace with your image URL
                height: 180,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Congratulations text
                  Text(
                    'Congratulations',
                    style: TextStyle(
                      color: const Color(0xFFB620E0),
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0.h),
                  // Winner details
                  Text(
                    'Mr. Abcd on winning 2000\$ Cash',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0.sp
                      ,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 18.0.h),
                  // Ticket and announcement details
                  Text(
                    'Ticket No: DC-00154-019963331\nAnnounced on: 04:45 PM 19 July, 2024',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0.h),
                  // Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6E07D7), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0.r),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    ),
                    child: Text(
                      'Try Your Luck',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

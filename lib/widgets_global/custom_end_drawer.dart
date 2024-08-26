import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEndDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo and Title
            Padding(
              padding: EdgeInsets.all(20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/app_icons/app_icon.jpg', // Replace with your logo asset path
                      height: 100.h,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Menu Items
            Expanded(
              child: ListView(
                children: [
                  _buildMenuItem(
                    icon: Icons.dashboard,
                    title: 'Dashboard',
                    isSelected: true,
                  ),
                  _buildMenuItem(
                    icon: Icons.shopping_cart,
                    title: 'Current Purchasing',
                    trailing: Icon(Icons.expand_more, color: Colors.black),
                  ),
                  _buildMenuItem(
                    icon: Icons.receipt_long,
                    title: 'Sales Report',
                  ),
                  _buildMenuItem(
                    icon: Icons.notifications,
                    title: 'Notifications',
                  ),
                ],
              ),
            ),
            Spacer(),
            // Logout Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
              child: SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    side: BorderSide(
                      color: const Color(0xFFB620E0),
                      width: 2.w,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    Widget? trailing,
    bool isSelected = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300, // Color of the bottom border
            width: 1.0, // Width of the bottom border
          ),
        ),
        color: isSelected ? Color(0xFFB620E0) : Colors.white, // Background color based on selection
      ),
      child: ListTile(
        leading: Icon(icon, color: isSelected ? Colors.white : Colors.black),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        trailing: trailing,
        onTap: () {
          // Handle tap event
        },
      ),
    );
  }

}

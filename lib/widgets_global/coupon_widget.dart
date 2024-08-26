import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CouponWidget extends StatelessWidget {
  final String price;
  final String date;
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onPayNow;

  const CouponWidget({
    Key? key,
    required this.price,
    required this.date,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
    required this.onPayNow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0), // Padding for all content except Pay Now button
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white), // Rectangular border
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: price,
                      items: <String>['10 AED', '20 AED', '30 AED']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.white)),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                      icon: Icon(Icons.keyboard_arrow_down, color: Colors.white), // Icon at right
                      isExpanded: true, // Makes dropdown fill the width
                      dropdownColor: Colors.purpleAccent,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "************",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                SizedBox(height: 6.h),
                Text(
                  date,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quantity',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
            Container(
              height: 38.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30.w,
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.grey.withOpacity(0.2),width: 1))
                    ),
                    child: IconButton(
                      icon: Icon(Icons.remove, color: Colors.black,size: 16,),
                      onPressed: onDecrease,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      quantity.toString(),
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border(left: BorderSide(color: Colors.grey.withOpacity(0.2),width: 1))
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Colors.black,size: 16,),
                      onPressed: onIncrease,
                    ),
                  ),
                ],
              ),
            )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50.h,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPayNow,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(12.0),
                  ),
                ),
              ),
              child: Text(
                'Pay Now',
                style: TextStyle(color: Colors.purple, fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [Color(0xFF6E07D7), Color(0xFFB620E0)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.01, 0.9],
                ).createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
                child: Text(
                  'RESULTS',
                  style: TextStyle(
                    color: Colors.white, // This color will be overridden by the gradient
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            buildResultRow('Yalla 6', ['01', '02', '03', '04', '05', '06']),
            buildResultRow('Yalla 4', ['01', '02', '03', '04']),
            buildResultRow('Yalla 3', ['01', '02', '03']),
            buildResultTextRow('i Phone', 'Mr. abcd'),
            buildResultTextRow('Gold', 'Mr. abcd'),
            buildResultTextRow('Car', 'Mr. abcd'),
          ],
        ),
      ),
    );
  }

  Widget buildResultRow(String title, List<String> numbers) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 16.0.w),
          Expanded(
            child: Wrap(
              spacing: 8.0.w,
              runSpacing: 8.0.h, // Space between rows when wrapped
              children: numbers
                  .map(
                    (number) => Container(
                  padding: EdgeInsets.all(8.0.r),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.purple, width: 2.w),
                  ),
                  child: Text(
                    number,
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildResultTextRow(String title, String result) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 50.0),
          Text(
            result,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

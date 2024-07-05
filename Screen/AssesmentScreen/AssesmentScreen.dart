import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MentalAssessmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Assessment'),
        backgroundColor: Color(0xffDE6060),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.w),
        child: ListView(
          children: List.generate(
            20, // Example: Replace with the actual number of questions
            (index) => _buildYesNoQuestion(index + 1),
          ),
        ),
      ),
    );
  }

  Widget _buildYesNoQuestion(int questionNumber) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(1.w),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Question $questionNumber:',
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            'Do you feel stressed today?',
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              _buildYesNoOption('Yes'),
              SizedBox(width: 2.w),
              _buildYesNoOption('No'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildYesNoOption(String optionText) {
    return Expanded(
      child: Container(
        height: 5.h,
        width:200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(50 ),
        ),
        child: Center(
          child: Text(
            optionText,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}


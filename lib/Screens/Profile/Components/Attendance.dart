import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class AttendanceSection extends StatefulWidget {
  const AttendanceSection({Key? key}) : super(key: key);

  @override
  State<AttendanceSection> createState() => _AttendanceSectionState();
}

class _AttendanceSectionState extends State<AttendanceSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 3.w),
      child: Column(
        children: [
          SfCalendar(
            view: CalendarView.month,
            showNavigationArrow: true,
            headerStyle: CalendarHeaderStyle(
              //backgroundColor: Colors.black,
              // textAlign: TextAlign.center,
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            cellBorderColor: Colors.transparent,
            todayTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            todayHighlightColor: HexColor("#C9F560"),
            viewHeaderStyle: ViewHeaderStyle(
              //backgroundColor: HexColor("#C9F560"),
              dayTextStyle: TextStyle(
                color: HexColor("#B3B3B3"),
                fontWeight: FontWeight.bold,
              ),
              dateTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            monthViewSettings: MonthViewSettings(
                showTrailingAndLeadingDates: false,
                monthCellStyle: MonthCellStyle(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#B3B3B3")))),
            showWeekNumber: false,
            weekNumberStyle: WeekNumberStyle(
              textStyle: TextStyle(color: Colors.white),
            ),
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 91.w,
              height: 8.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor("#3D4552"),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Total Events Attended : ',
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Attendence Given :',
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '6',
                            style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#C9F560"),
                            ),
                          ),
                          Text(
                            '6',
                            style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#C9F560"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

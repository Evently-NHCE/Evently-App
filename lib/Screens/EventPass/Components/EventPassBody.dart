import 'package:evently/Screens/EventPass/Components/EventPassAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class EventPassBody extends StatefulWidget {
  const EventPassBody({Key? key}) : super(key: key);

  @override
  State<EventPassBody> createState() => _EventPassBodyState();
}

class _EventPassBodyState extends State<EventPassBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: PassAppBar(),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 5, right: 25),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipPath(
                      clipper: ArcBottomClipper(),
                      child: Container(
                        height: 370,
                        width: 339,
                        decoration: ShapeDecoration(
                          color: HexColor("#3D4552"),
                          shape: Border.all(color: Colors.white),
                        ),
                        child: CustomPaint(
                          painter: ClipperBorderPainter(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                child: Image.asset(
                                    'assets/Images/eventbanner.png'),
                                height: 180,
                                width: 292,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Code-a-Pookalam',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 292,
                                child: Divider(
                                  color: Colors.white,
                                  thickness: 3,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 5, 25, 25),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Name',
                                          style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Text(
                                          'Ritika Hirenath',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'USN',
                                          style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Text(
                                          '1NH20CS000',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Date',
                                          style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Text(
                                          'Sat,Feb 20,2021',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'Venue',
                                          style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Text(
                                          'NHCE',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.white,
                      indent: 23,
                      endIndent: 23,
                    ),
                    ClipPath(
                        clipper: ArcTopClipper(),
                        child: Container(
                          height: 216,
                          width: 339,
                          decoration: ShapeDecoration(
                            color: HexColor("#3D4552"),
                            shape: Border.all(color: Colors.white),
                          ),
                          child: CustomPaint(
                            painter: ClipperTopBorderPainter(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'QR-Code',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child:
                                      Image.asset('assets/Images/QRcode.png'),
                                  height: 123,
                                  width: 118,
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ArcTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    //12x12 and 36x26
    path.lineTo(0, size.height - 12);
    final firstEP = Offset(size.width - 326, size.height);
    final firstCP = Offset(0, size.height);
    path.quadraticBezierTo(firstCP.dx, firstCP.dy, firstEP.dx, firstEP.dy);
    path.lineTo(size.width - 12, size.height);
    final secondEP = Offset(size.width, size.height - 12);
    final secondCP = Offset(size.width, size.height);
    path.quadraticBezierTo(secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);
    path.lineTo(size.width, size.height - 190);

    final thirdEP = Offset(size.width - 22, 0);
    final thirdCP = Offset(size.width - 22, size.height - 190);
    path.quadraticBezierTo(thirdCP.dx, thirdCP.dy, thirdEP.dx, thirdEP.dy);
    path.lineTo(size.width - 317, 0);

    final fourthEP = Offset(0, size.height - 190);
    final fourthCP = Offset(size.width - 315, size.height - 190);
    path.quadraticBezierTo(fourthCP.dx, fourthCP.dy, fourthEP.dx, fourthEP.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipperTopBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = new Path();
    //12x12 and 36x26
    path.lineTo(0, size.height - 12);
    final firstEP = Offset(size.width - 326, size.height);
    final firstCP = Offset(0, size.height);
    path.quadraticBezierTo(firstCP.dx, firstCP.dy, firstEP.dx, firstEP.dy);
    path.lineTo(size.width - 12, size.height);
    final secondEP = Offset(size.width, size.height - 12);
    final secondCP = Offset(size.width, size.height);
    path.quadraticBezierTo(secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);
    path.lineTo(size.width, size.height - 190);

    final thirdEP = Offset(size.width - 22, 0);
    final thirdCP = Offset(size.width - 25, size.height - 190);
    path.quadraticBezierTo(thirdCP.dx, thirdCP.dy, thirdEP.dx, thirdEP.dy);
    path.lineTo(size.width - 317, 0);

    final fourthEP = Offset(0, size.height - 190);
    final fourthCP = Offset(size.width - 310, size.height - 190);
    path.quadraticBezierTo(fourthCP.dx, fourthCP.dy, fourthEP.dx, fourthEP.dy);
    path.lineTo(0, size.height - 190);
    path.close();

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = Colors.white;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ArcBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 22);
    final firstEndPoint = Offset(size.width - 317, size.height);
    final firstControlPoint =
        Offset(size.width - 317, size.height - 22); //317,22
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    // path.lineTo(size.width - 317, size.height);
    path.lineTo(size.width - 22, size.height);
    final secondControlPoint = Offset(size.width - 22, size.height - 22);
    final secondEndPoint = Offset(size.width, size.height - 22);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 348);
    final thirdControlPoint = Offset(size.width, 0);
    final thirdEndPoint = Offset(size.width - 22, 0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.lineTo(size.width - 317, 0);
    final fourthControlPoint = Offset(0, 0);
    final fourthEndPoint = Offset(0, size.height - 348);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    path.close;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipperBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.lineTo(0, size.height - 22);
    final firstEndPoint = Offset(size.width - 317, size.height);
    final firstControlPoint =
        Offset(size.width - 312, size.height - 22); //317,22
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    // path.lineTo(size.width - 317, size.height);
    path.lineTo(size.width - 22, size.height);
    final secondControlPoint = Offset(size.width - 22, size.height - 22);
    final secondEndPoint = Offset(size.width, size.height - 22);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 348);
    final thirdControlPoint = Offset(size.width, 0);
    final thirdEndPoint = Offset(size.width - 22, 0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.lineTo(size.width - 317, 0);
    final fourthControlPoint = Offset(0, 0);
    final fourthEndPoint = Offset(0, size.height - 348);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    path.close();

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = Colors.white;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

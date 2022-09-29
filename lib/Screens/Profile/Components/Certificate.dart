import 'package:flutter/material.dart';

class CertificateSection extends StatefulWidget {
  const CertificateSection({Key? key}) : super(key: key);

  @override
  State<CertificateSection> createState() => _CertificateSectionState();
}

class _CertificateSectionState extends State<CertificateSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Certificate',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}

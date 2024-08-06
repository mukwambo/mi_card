import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrContact extends StatelessWidget {
  final String phoneNumber = '+254000000000';

  const QrContact({super.key});

  @override
  Widget build(BuildContext context) {
    final String contactInfo =
        'BEGIN:VCARD\nVERSION:3.0\nFN:Brian\nTEL:$phoneNumber\nEND:VCARD';

    return QrImageView(
      data: contactInfo,
      version: QrVersions.auto,
      size: 200.0,
    );
  }
}

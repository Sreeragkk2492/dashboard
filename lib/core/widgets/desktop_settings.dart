
import 'package:flutter/material.dart';


class DesktopSettings extends StatelessWidget {
  const DesktopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600),
            ),
          ),
        
        ],
      )),
    );
  }
}

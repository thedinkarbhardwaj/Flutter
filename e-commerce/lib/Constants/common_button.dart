import 'package:flutter/material.dart';

import 'app_style.dart';

class CommonButton extends StatelessWidget {

  final dynamic child;
  final dynamic onTap;  // void callback
  const CommonButton({super.key,required this.child,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        )
      ),
          onPressed: onTap,
          child: child),
    );

  }
}

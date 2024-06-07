
import 'package:flutter/material.dart';

import 'Calculator_view.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: CalculatorView(),
      ),
    );

  }
}

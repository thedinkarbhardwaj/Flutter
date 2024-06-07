import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border:
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                ),
              ),
              focusedBorder:
              OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white
                ),
              ),
              hintText: "Enter a number",
              hintStyle: TextStyle(
                color: Colors.white
              )
            ),
          ),
        ],
      ),
    );
  }
}

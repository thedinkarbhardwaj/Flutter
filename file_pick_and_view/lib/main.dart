import 'package:file_pick_and_view/PickData_Using_file_picker_library.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'pick_data',
    routes: {
      'pick_data': (context) => PickData_Using_file_picker_library()
    },
  ));
}



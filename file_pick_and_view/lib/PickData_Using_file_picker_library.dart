
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
// import 'package:open_file/open_file.dart';

class PickData_Using_file_picker_library extends StatefulWidget {
  const PickData_Using_file_picker_library({Key? key}) : super(key: key);

  @override
  State<PickData_Using_file_picker_library> createState() => _PickData_Using_file_picker_libraryState();
}

class _PickData_Using_file_picker_libraryState extends State<PickData_Using_file_picker_library> {

  String file_path = "";
  int value = 0; // 0 use to hide image 1 used to display

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick and Open file"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              _pickFile();
            },
                child: Text("Pick Image")),

           if(value == 1)
             Image.file(
              File(file_path),
              width: 300,
              height: 300,
              alignment: Alignment.topCenter,
             )
          ],
        ),
      ),
    );
  }

  void _pickFile() async {

    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    // if no file is picked
    if (result == null) return;


    print(result.files.first.name);
    print(result.files.first.size);
    print(result.files.first.path);

    setState(() {
     // File file = File((result.files.first.path);
      file_path = result.files.first.path!;
      value = 1;
    });
  }

}

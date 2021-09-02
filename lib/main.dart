import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: MaterialButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
              PlatformFile file = result.files.first;

              print(file.name);
              print(file.bytes);
              print(file.size);
              print(file.extension);
              print(file.path);
            } else {
              // User canceled the picker
            }
          },
          child: Text('click to upload'),
        ),
      ),
    );
  }
}

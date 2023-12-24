import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imgPickr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return imgPickerState();
  }
}

class imgPickerState extends State<imgPickr> {
  File? _image;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Image Picker"))),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff30cfd0), Color(0xff330867)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: Column(
          children: [
            _image != null
                ? Image.file(
                    _image!,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    "https://images.unsplash.com/photo-1515378960530-7c0da6231fb1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => getImage(ImageSource.gallery),
              child: Text("Pick from Gallery"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => getImage(ImageSource.camera),
              child: Text("Pick from Camera"),
            ),
          ],
        ),
      ),
    );
  }
}

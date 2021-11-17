import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_app/widget/brand_colors.dart';

class Registation2 extends StatefulWidget {
  //const Registation2({ Key? key }) : super(key: key);

  @override
  State<Registation2> createState() => _Registation2State();
}

class _Registation2State extends State<Registation2> {
  File? _image;

  selectImage(ctx) {
    return showDialog(
        context: ctx,
        builder: (context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            title: Text("Upload Image"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  getImageFromCamera();
                },
                child: Text("Choose from camera"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  getImageFromGallery();
                },
                child: Text("Choose from gallery"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),
            ],
          );
        });
  }

  final ImagePicker _picker = ImagePicker();

  Future getImageFromGallery() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
    });
    Navigator.of(context).pop();
  }

  Future getImageFromCamera() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile!.path);
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        title: SvgPicture.asset(
          "slider4.svg",
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            Center(
              child: Text("Complete your Profile", style: myStyles14()),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.grey, width: 1.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        decoration: BoxDecoration(
                          // color: BrandColors.colorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: _image == null
                            ? IconButton(
                                onPressed: () {
                                  // selectImage(context);
                                  selectImage(context);
                                },
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              )
                            : CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image(image: FileImage(_image!)),
                              )
                        // : Image.file(
                        //     image,
                        //     fit: BoxFit.cover,
                        //   ),
                        ),
                  ),
                ),
                Positioned(
                  right: -10,
                  top: -10,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _image = null;
                      });
                    },
                    icon: _image != null
                        ? Icon(
                            Icons.clear,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.clear,
                            color: Colors.transparent,
                          ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

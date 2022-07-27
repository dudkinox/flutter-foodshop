import 'dart:io';

import 'package:editable_image/editable_image.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var fileImage;
  TextEditingController name = TextEditingController();
  TextEditingController sur = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('สร้างบัญชีผู้ใช้'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: fileImage != null
                      ? EditableImage(
                          image: Image.file(
                            fileImage,
                            fit: BoxFit.cover,
                          ),
                          size: 150.0,
                          imagePickerTheme: ThemeData(
                            primaryColor: Colors.white,
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.white70,
                            iconTheme:
                                const IconThemeData(color: Colors.black87),
                            fontFamily: 'Georgia',
                          ),
                          imageBorder:
                              Border.all(color: Colors.black87, width: 2.0),
                          editIconBorder:
                              Border.all(color: Colors.black87, width: 2.0),
                          onChange: (File? file) {},
                        )
                      : RawMaterialButton(
                          onPressed: () async {
                            var image = await ImagePicker()
                                .getImage(source: ImageSource.gallery);
                            setState(() {
                              fileImage = File(image!.path);
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.white,
                          padding: const EdgeInsets.all(15.0),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.photo_camera,
                            size: 80,
                          ),
                        ),
                ),
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    labelText: 'ชื่อ',
                  ),
                ),
                TextFormField(
                  controller: sur,
                  decoration: const InputDecoration(
                    labelText: 'นามสกุล',
                  ),
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'email',
                  ),
                ),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'password',
                  ),
                ),
                TextFormField(
                  controller: confirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'confirm password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: address,
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'address',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: phone,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'phone',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text("ลงทะเบียน",
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'SpartanMB-Black')),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

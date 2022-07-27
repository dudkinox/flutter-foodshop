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
                const Text("ชื่อ",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'SpartanMB-Black')),
                TextFormField(
                    // onSaved: (String name){
                    //   profile.name=name;
                    // },
                    ),
                SizedBox(
                  height: 10,
                ),
                Text("นามสกุล",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'SaprtanMB-Black')),
                TextFormField(
                    // onSaved: (String surname){
                    //   profile.surname=surname;
                    // },
                    ),
                const SizedBox(
                  height: 10,
                ),
                const Text("ที่อยู่",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'SaprtanMB-Black')),
                TextFormField(
                    // onSaved: (String address){
                    //   profile.address = address;
                    // },
                    ),
                const SizedBox(
                  height: 10,
                ),
                const Text("เบอร์โทร",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'SaprtanMB-Black')),
                TextFormField(
                    // onSaved: (String phone){
                    //   profile.phone=phone;
                    // },
                    ),
                SizedBox(
                  height: 10,
                ),
                Text("อีเมล",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'SpartanMB-Black')),
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: "กรูณากรอกอีเมล"),
                    EmailValidator(errorText: "อีเมลไม่ถูกต้อง")
                  ]),
                  keyboardType: TextInputType.emailAddress,
                  //  onSaved: (String email){
                  //     profile.email=email;
                  //   },
                ),
                SizedBox(
                  height: 10,
                ),
                Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณากรอกรหัสผ่าน"),
                  obscureText: true,
                  // onSaved: (String password){
                  //   profile.password=password;
                  // },
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("ลงทะเบียน",
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'SpartanMB-Black')),
                    onPressed: () {
                      // if(FormKey.currentState.validate()){
                      //   formKey.currentState.save();
                      // print("name = ${profile.name} surname = ${profile.surname}
                      // address = ${profile.address} phone = ${profile.phone}
                      // email = ${profile.email} password = ${profile.password}");
                      // formkey.currentState.reset()
                      // }
                    },
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

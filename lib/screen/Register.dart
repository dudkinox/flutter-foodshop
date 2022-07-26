import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:joke_sam_kai/model/Profile.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  
  // final formkey = GlobalKey<FormState>();
  // Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('สร้างบัญชีผู้ใช้'),),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            // key: formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ชื่อ",style: TextStyle(
                    fontSize: 20, 
                    fontFamily: 'SpartanMB-Black')),
                  TextFormField(
                    // onSaved: (String name){
                    //   profile.name=name;
                    // },
                  ),
                  SizedBox(height: 10,),
                  Text("นามสกุล",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SaprtanMB-Black')),
                  TextFormField(
                    // onSaved: (String surname){
                    //   profile.surname=surname;
                    // },
                  ),
                  SizedBox(height: 10,),
                  Text("ที่อยู่",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SaprtanMB-Black')),
                  TextFormField(
                    // onSaved: (String address){
                    //   profile.address = address;
                    // },
                  ),
                  SizedBox(height: 10,),
                  Text("เบอร์โทร",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SaprtanMB-Black')),
                  TextFormField(
                    // onSaved: (String phone){
                    //   profile.phone=phone;
                    // },
                  ),
                  SizedBox(height: 10,),
                  Text("อีเมล",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SpartanMB-Black')),
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
                  SizedBox(height: 10,),
                  Text("รหัสผ่าน",style: TextStyle(
                    fontSize: 20)),
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
                      child: Text("ลงทะเบียน",style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SpartanMB-Black')
                      ),
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
      ),
    );
  }
}
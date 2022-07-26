import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  // final formkey = GlobalKey<FormState>();
  // Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('เข้าสู่ระบบ'),),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            // key: formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("อีเมล",style: TextStyle(
                    fontSize: 20, 
                    fontFamily: 'SpartanMB-Black')),
                  TextFormField(
                     validator: MultiValidator([
                      RequiredValidator(errorText: "กรูณากรอกอีเมล"),
                      EmailValidator(errorText: "อีเมลไม่ถูกต้อง")
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    // onSaved: (String name){
                    //   profile.name=name;
                    // },
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
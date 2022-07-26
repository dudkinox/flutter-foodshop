// import 'package:flutter/material.dart';
// import 'package:joke_sam_kai/my_style.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:joke_sam_kai/screen/Home.dart';
// import 'package:http/http.dart' as http;

// class SignIn extends StatefulWidget {
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();
//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//             MaterialPageRoute route =
//             MaterialPageRoute(builder: (value) => Home());
//           Navigator.push(context, route);
//           }, 
//           icon: Icon(Icons.arrow_back),
//         ),
//         title: Text('ล็อกอิน'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: RadialGradient(
//             colors: <Color>[Colors.white,MyStyle().primaryColor],
//             center: const Alignment(0, -0.3),
//             radius: 1.0,
//           ),
//         ),
//         child: Center(
//           child: SingleChildScrollView( //สกอได้ทั้งแนวตั้งแนวนอน
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 MyStyle().showLogo(),
//                 MyStyle().mySizedBox(),
//                 MyStyle().showTitle('โจ๊กสามไข่'),
//                 MyStyle().mySizedBox(),
//                 userForm(),
//                 MyStyle().mySizedBox(),
//                 passwordForm(),
//                 MyStyle().mySizedBox(),
//                 loginButton()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget loginButton() => Container(width: 250.0,
//     child: RaisedButton(color: MyStyle().darkColor,
//       onPressed: () {
//         Navigator.pop(context);
//             MaterialPageRoute route =
//             MaterialPageRoute(builder: (value) => Home());
//           Navigator.push(context, route);
//       }, child: const Text(
//         'Login', 
//         style: TextStyle(color: Colors.white),    
//       ),
//     ),
//   );

  

//   Widget userForm() => Container(
//     width: 250.0,
//     child: TextFormField(
//       validator: MultiValidator([
//         RequiredValidator(errorText: "กรูณากรอกอีเมล"),
//         EmailValidator(errorText: "อีเมลไม่ถูกต้อง")
//       ]),
//       keyboardType: TextInputType.emailAddress,
//       decoration: InputDecoration(
//         prefixIcon: Icon(
//           Icons.account_box, 
//           color: MyStyle().darkColor,
//       ),
//         labelStyle: TextStyle(
//           color: MyStyle().darkColor),
//         labelText: 'อีเมล :',
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: MyStyle().darkColor)),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: MyStyle().primaryColor)),
//       ),
//     ),
//   );

//   Widget passwordForm() => Container(
//     width: 250.0,
//     child: TextFormField(
//       validator: RequiredValidator(errorText: "กรุณากรอกรหัสผ่าน"),
//       obscureText: true,
//       decoration: InputDecoration(
//         prefixIcon: Icon(
//           Icons.lock, 
//           color: MyStyle().darkColor,
//       ),
//         labelStyle: TextStyle(
//           color: MyStyle().darkColor),
//         labelText: 'รหัสผ่าน :',
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: MyStyle().darkColor)),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: MyStyle().primaryColor)),
//       ),
//     ),
//   );
// }
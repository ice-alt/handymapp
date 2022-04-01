import 'package:flutter/material.dart';
import 'package:flutter_handymappisioma/serviceauth/auth.dart';
import 'package:flutter_handymappisioma/servicesmain.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Field Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                controller: name,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                controller: email,
              ),
              const SizedBox(
                height: 10,
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
                controller: phoneNo,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                controller: password,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "By proceeding, you consent to get calls, WhatsApp,\nSMS messages or email, including automated means,\nfrom HandyMapp."),
              MaterialButton(
                child: const Text('Next'),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  _formKey.currentState!.validate();
                  signUp(
                          name: name.text,
                          email: email.text,
                          phoneNo: phoneNo.text,
                          password: password.text)
                      .then((value) {
                    if (value != null) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage()));
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _onEditing = true;
//   late String _code;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('Example verify code')),
//       ),
//       body: Column(
//         children: <Widget>[
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Center(
//               child: Text(
//                 'Enter your code',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//           ),
//           VerificationCode(
//             textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
//             keyboardType: TextInputType.number,
//             underlineColor: Colors
//                 .amber, // If this is null it will use primaryColor: Colors.red from Theme
//             length: 4,
//             cursorColor:
//                 Colors.blue, // If this is null it will default to the ambient
//             // clearAll is NOT required, you can delete it
//             // takes any widget, so you can implement your design
//             clearAll: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'clear all',
//                 style: TextStyle(
//                     fontSize: 14.0,
//                     decoration: TextDecoration.underline,
//                     color: Colors.blue[700]),
//               ),
//             ),
//             onCompleted: (String value) {
//               setState(() {
//                 _code = value;
//               });
//             },
//             onEditing: (bool value) {
//               setState(() {
//                 _onEditing = value;
//               });
//               if (!_onEditing) FocusScope.of(context).unfocus();
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(
//               child: _onEditing
//                   ? const Text('Please enter full code')
//                   : Text('I have not recieved a code: $_code'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

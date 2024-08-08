import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donation_application/Components/custom_passtextfield.dart';
import 'package:donation_application/Components/custom_textfield.dart';
import 'package:donation_application/Components/login_text.dart';
import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Screen/Start%20Screems/login.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'model.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  _RegisterState();

  bool showProgress = false;
  bool visible = false;

  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController =
      new TextEditingController();
  final TextEditingController name = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController mobile = new TextEditingController();
  final TextEditingController _firstname = new TextEditingController();
  final TextEditingController _lastname = new TextEditingController();
  final TextEditingController _username = new TextEditingController();
  // bool _isObscure = true;
  // bool _isObscure2 = true;
  File? file;
  var options = [
    'NGO',
    'DONOR',
  ];
  // ignore: unused_field
  var _currentItemSelected = "DONOR";
  var rool = "DONOR";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.orangeAccent[700],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          "Register Now",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade700)),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextfield(
                                controller: _firstname,
                                hinttext: 'First Name',
                                passwordhide: false,
                                width: 155,
                                textfielcolor:
                                    Color.fromARGB(243, 237, 237, 237),
                                textcolor: Colors.black,
                                bordercolor: Colors.white),
                            SizedBox(
                              width: 20,
                            ),
                            CustomTextfield(
                                controller: _lastname,
                                hinttext: 'Last Name',
                                passwordhide: false,
                                width: 155,
                                textfielcolor:
                                    Color.fromARGB(243, 237, 237, 237),
                                textcolor: Colors.black,
                                bordercolor: Colors.white)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextfield(
                            controller: _username,
                            hinttext: 'Enter your username...',
                            passwordhide: false,
                            width: 330,
                            textfielcolor: Color.fromARGB(243, 237, 237, 237),
                            textcolor: Colors.black,
                            bordercolor: Colors.white),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextfield(
                          controller: emailController,
                          hinttext: 'Enter your email...',
                          passwordhide: false,
                          width: 330,
                          textfielcolor: Color.fromARGB(243, 237, 237, 237),
                          textcolor: Colors.black,
                          bordercolor: Colors.white,
                          
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomPassTextfield(
                          controller: passwordController,
                          hinttext: 'Enter your password...',
                          width: 330,
                          suffixicon: Icon(Icons.remove_red_eye),
                          textfielcolor: Color.fromARGB(243, 237, 237, 237),
                          textcolor: Colors.black,
                          bordercolor: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomPassTextfield(
                          controller: confirmpassController,
                          hinttext: 'Re-type Password...',
                          width: 330,
                          suffixicon: Icon(Icons.remove_red_eye),
                          textfielcolor: Color.fromARGB(243, 237, 237, 237),
                          textcolor: Colors.black,
                          bordercolor: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(243, 237, 237, 237),
                          ),
                          child: DropdownButtonFormField2<String>(
                            //  dropdownColor: Colors.grey.shade200,
                            isDense: true,
                            isExpanded: true,
                            //  iconEnabledColor: Colors.black,
                            //  focusColor: Colors.white,
                            //  padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: InputDecoration(
                              // Add Horizontal padding using menuItemStyleData.padding so it matches
                              // the menu padding when button's width is not specified.
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 16),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // Add more decoration..
                            ),
                            hint: const Text(
                              'Select Role',
                              style: TextStyle(fontSize: 14),
                            ),
                            items: options.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(
                                  dropDownStringItem,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              );
                            }).toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'Select Role';
                              }
                              return null;
                            },
                            onChanged: (newValueSelected) {
                              setState(() {
                                _currentItemSelected = newValueSelected!;
                                rool = newValueSelected;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.only(right: 8),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                            // value: _currentItemSelected,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.13,
                        ),
                        RoundedButton(
                          width: 330,
                          buttontext: 'Signup',
                          onpressed: () {
                            String email = emailController.text.trim();
                            showEmailSnackbar(context, email);
                             String pass = passwordController.text.trim();
                            showPassSnackbar(context, pass);
                            showRePassSnackbar(context, pass);
                            setState(() {
                              showProgress = true;
                            });
                            signUp(emailController.text,
                                passwordController.text, rool);
                          },
                          height: 48,
                          bgcolor: const Color(0xff36984B),
                          textcolor: Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        LoginForget(
                          text1: 'Already have an account?',
                          clicktext: 'Sign in!',
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

void showRePassSnackbar(BuildContext context, String repass) {
  
  if (confirmpassController.text != passwordController.text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Password Does Not Match'),
        duration: Duration(seconds: 2),
      ),
    );
  }  
}
  void signUp(String email, String password, String rool) async {
    CircularProgressIndicator();
    if (_formkey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore(email, rool)})
          // ignore: body_might_complete_normally_catch_error
          .catchError((e) {});
    }
  }

  postDetailsToFirestore(String email, String rool) async {
    // ignore: unused_local_variable
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var user = _auth.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection('users');
    ref.doc(user!.uid).set({'email': emailController.text, 'rool': rool});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}

bool isValidEmail(String email) {
  return RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(email);
}

void showEmailSnackbar(BuildContext context, String email) {
  if (!isValidEmail(email)) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please enter a valid email address.'),
        duration: Duration(seconds: 2),
      ),
    );
  }  
}

bool isValidpass(String pass) {
  return RegExp(r'^.{6,}$').hasMatch(pass);
                          
}

void showPassSnackbar(BuildContext context, String pass) {
  
  if (!isValidpass(pass)) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please enter a valid Password min 6 character.'),
        duration: Duration(seconds: 2),
      ),
    );
  }  
}


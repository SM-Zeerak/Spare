import 'package:donation_application/Components/bottom_navigation.dart';
import 'package:donation_application/Components/custom_passtextfield.dart';
import 'package:donation_application/Components/custom_textfield.dart';
import 'package:donation_application/Components/login_text.dart';
import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Config/popup_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // bool _isObscure3 = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // ignore: unused_field
  final _auth = FirebaseAuth.instance;
  PopUpController controller = Get.put(PopUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/logo.png'),
            ),
            CustomTextfield(
              controller: emailController,
              hinttext: 'Enter your email or username',
              passwordhide: false,
              width: MediaQuery.of(context).size.width * 0.8,
              textfielcolor: Color.fromARGB(243, 237, 237, 237),
              textcolor: Colors.black,
              bordercolor: Colors.white,
             ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomPassTextfield(
              controller: passwordController,
              hinttext: 'Enter your password',
              width: MediaQuery.of(context).size.width * 0.8,
              textfielcolor: Color.fromARGB(243, 237, 237, 237),
              textcolor: Colors.black,
              bordercolor: Colors.white,
              ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Form(
              key: _formkey,
              child: RoundedButton(
                width: MediaQuery.of(context).size.width * 0.8,
                buttontext: 'Login',
                onpressed: () {
                  String email = emailController.text.trim();
                  showEmailSnackbar(context, email);
                  String pass = passwordController.text.trim();
                  showPassSnackbar(context, pass);
                  setState(() {
                    visible = true;
                  });
                  signIn(emailController.text, passwordController.text);
                },
                height: 48,
                bgcolor: const Color(0xff36984B),
                textcolor: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            LoginForget(
              text1: 'Forget Password?',
              clicktext: 'Reset Now!',
              ontap: () {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            LoginForget(
              text1: "Don't have an account?",
              clicktext: 'Create Now!',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
            )
          ],
        ),
      ),
    );
  }

  void route() {
    User? user = FirebaseAuth.instance.currentUser;
    // ignore: unused_local_variable
    var kk = FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('rool') == "NGO") {
          controller.visiblecontainer1();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CustomBottomNavigation(
                isindex: 1,
              ),
            ),
          );
        } else {
          controller.visiblecontainer();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CustomBottomNavigation(isindex: 1),
            ),
          );
        }
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        // ignore: unused_local_variable
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        route();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
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

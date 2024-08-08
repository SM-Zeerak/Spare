import 'dart:io';

import 'package:donation_application/Components/custom_textfield.dart';
import 'package:donation_application/Components/custom_textfield_multiline.dart';
import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Config/popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _bio = TextEditingController();

  File? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No Image');
      }
    });

    Navigator.pop(context);
  }

  Future browseImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No Image');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
      PopUpController controller = Get.put(PopUpController());
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(207, 0, 0, 0),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Profile Edit',
            style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 14, color: Colors.white)),
          )),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // height: MediaQuery.sizeOf(context).height * 0.98,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/donationimage.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
               Stack(
                children: [
                  Visibility(
                    visible: controller.inVisiblecont2.value,
                    child:  _image == null
                    ? CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/profile3.png'),
                    )
                    : CircleAvatar(
                        radius: 70,
                        backgroundImage: FileImage(_image!),
                      ),),
                      Visibility(
                        visible: controller.inVisiblecont1.value,
                        child:  _image == null
                    ? CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/ngoprofile.png'),
                    )
                    : CircleAvatar(
                        radius: 70,
                        backgroundImage: FileImage(_image!),
                      ),)
                ],
               ),
                //  Container(
                //   width: 140,
                //   height: 146,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(1000),
                //     image: DecorationImage(
                //         image: AssetImage('assets/images/profile3.png'),
                //         fit: BoxFit.fill),
                //     border:
                //         Border.all(color: Colors.green, style: BorderStyle.solid),
                //     // color: Colors.amber,
                //   ),),
                SizedBox(
                  height: 30,
                ),
               
                SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  controller: _name,
                  hinttext: 'Enter Name..',
                  passwordhide: false,
                  width: 267,
                  textfielcolor: const Color.fromARGB(66, 0, 0, 0),
                  textcolor: Colors.white,
                  bordercolor: Colors.white,
                  hintcolor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextfield(
                  controller: _email,
                  hinttext: 'Enter Email..',
                  passwordhide: false,
                  width: 267,
                  textfielcolor: const Color.fromARGB(66, 0, 0, 0),
                  textcolor: Colors.white,
                  bordercolor: Colors.white,
                  hintcolor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextfield(
                  controller: _password,
                  hinttext: 'Enter Password..',
                  passwordhide: false,
                  width: 267,
                  textfielcolor: const Color.fromARGB(66, 0, 0, 0),
                  textcolor: Colors.white,
                  bordercolor: Colors.white,
                  hintcolor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextfield(
                  controller: _username,
                  hinttext: 'Enter UserName..',
                  passwordhide: false,
                  width: 267,
                  textfielcolor: const Color.fromARGB(66, 0, 0, 0),
                  textcolor: Colors.white,
                  bordercolor: Colors.white,
                  hintcolor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextMultiline(
                  controller: _bio,
                  hinttext: 'Bio..',
                  passwordhide: false,
                  width: 267,
                  textfielcolor: const Color.fromARGB(66, 0, 0, 0),
                  textcolor: Colors.white,
                  bordercolor: Colors.white,
                  hintcolor: Colors.white,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                RoundedButton(
                    width: 128,
                    buttontext: 'SAVE',
                    onpressed: () {},
                    height: 39,
                    bgcolor: Colors.transparent,
                    textcolor: Colors.white),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

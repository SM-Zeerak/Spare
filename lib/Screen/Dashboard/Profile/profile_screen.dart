import 'package:donation_application/Components/search_textfield.dart';
import 'package:donation_application/Components/side_navigation.dart';
import 'package:donation_application/Config/popup_controller.dart';
import 'package:donation_application/Screen/Dashboard/Profile/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PopUpController controller = Get.put(PopUpController());
    TextEditingController _search = TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: SideNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Stack(
          children: [
            Visibility(
              visible: controller.inVisiblecont2.value,
              child: Text(
          'Donation History',
          style: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 14, color: Colors.white)),
        ),),
        Visibility(
              visible: controller.inVisiblecont1.value,
              child: Text(
          'NGO History',
          style: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 14, color: Colors.white)),
        ),)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomSearch(
              controller: _search,
              passwordhide: false,
              width: 160,
              hinttext: 'Search here...',
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.6,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                  image: AssetImage('assets/images/profilewallpaper.png'),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                // color: Colors.amber,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Stack(
                      children: [
                        Visibility(
                          visible: controller.inVisiblecont2.value,
                          child: Column(
                            children: [
                              Text(
                      'John Deo',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        // color: Colors.white
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Making a difference through thoughtful giving.'),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ],
                    ),
                            ],
                          )),
                           Visibility(
                          visible: controller.inVisiblecont1.value,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                      'Hope Haven Trust',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        // color: Colors.white
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text('Safeguarding homes, securing futures.'),
                        Text('www.hopeheaven.com'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ],
                    ),
                            ],
                          )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                '\$1200',
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 36,
                                        color: Color(0xff36984B),
                                        fontWeight: FontWeight.w700)),
                              ),
                              Text(
                                'ROUNDS-UP',
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                '\$2000',
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 36,
                                        color: Color(0xff36984B),
                                        fontWeight: FontWeight.w700)),
                              ),
                              Text(
                                'ONE TIME',
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 211, 208, 208),
                      height: 210,
                      width: 296,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.black,
                            width: double.infinity,
                            height: 32,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'This Month',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 178,
                            child: Center(
                              child: Text(
                                '\$200',
                                style: TextStyle(
                                    color: Color(0xff36984B),
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.27,
            child: Stack(
              children: [
                Visibility(
                  visible: controller.inVisiblecont2.value,
                  child: Container(
              width: 182,
              height: 192,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                image: DecorationImage(
                    image: AssetImage('assets/images/profile3.png'),
                    fit: BoxFit.fill),
                border:
                    Border.all(color: Colors.green, style: BorderStyle.solid),
                // color: Colors.amber,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 130,
                    left: 120,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileEditScreen()));
                        },
                        icon: Icon(
                          Icons.edit_note,
                          color: Colors.black,
                          size: 50,
                        )),
                  )
                ],
              ),
            ),
                ),
                 Visibility(
                  visible: controller.inVisiblecont1.value,
                  child: Container(
              width: 182,
              height: 192,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                image: DecorationImage(
                    image: AssetImage('assets/images/ngoprofile.png'),
                    fit: BoxFit.fill),
                border:
                    Border.all(color: Colors.green, style: BorderStyle.solid),
                // color: Colors.amber,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 130,
                    left: 120,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileEditScreen()));
                        },
                        icon: Icon(
                          Icons.edit_note,
                          color: Colors.black,
                          size: 50,
                        )),
                  )
                ],
              ),
            ),
                ),
              ],
            )
          ),
        ]),
      ),
    );
  }
}

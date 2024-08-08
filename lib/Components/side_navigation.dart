import 'package:donation_application/Components/bottom_navigation.dart';
import 'package:donation_application/Config/popup_controller.dart';
import 'package:donation_application/Screen/Dashboard/Profile/profile_screen.dart';
import 'package:donation_application/Screen/Dashboard/case_detail.dart';
import 'package:donation_application/Screen/NGO%20SCREEN/current_fund.dart';
import 'package:donation_application/Screen/Start%20Screems/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SideNavigation extends StatelessWidget {
  const SideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    PopUpController controller = Get.put(PopUpController());
    return Drawer(
      backgroundColor: Color.fromARGB(100, 0, 0, 0),
      // shape: Border.all(color: Colors.black),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children:[ Visibility(
                visible: controller.inVisiblecont2.value,
                child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: Container(
                      width: 117,
                      height: 117,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile2.png'),
                            fit: BoxFit.fill),
                        border: Border.all(
                            color: Colors.green, style: BorderStyle.solid),
                        // color: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'John Doe',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Making a difference through \nthoughtful giving.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      // fontWeight: FontWeight.w700
                    )),
                  ),
                  SizedBox(
                    height: 10,
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
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  )
                ],
              ), ),
              Visibility(
                visible: controller.inVisiblecont1.value,
                child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: Container(
                      width: 117,
                      height: 117,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        image: DecorationImage(
                            image: AssetImage('assets/images/ngoprofile.png'),
                            fit: BoxFit.fill),
                        border: Border.all(
                            color: Colors.green, style: BorderStyle.solid),
                        // color: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hope Haven Trust',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Safeguarding homes, securing futures. \nwww.hopeheaven.com',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      // fontWeight: FontWeight.w700
                    )),
                  ),
                  SizedBox(
                    height: 10,
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
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  )
                ],
              ), ),
         ] )
          ),
          // UserAccountsDrawerHeader(
          //   // margin: EdgeInsets.all(20),
          //   accountName: Text('Jhon Doe'),
          //   accountEmail: Text('Making a difference through \nthoughtful giving.'),
          //   currentAccountPicture: CircleAvatar(
          //     child: ClipOval(child: Image.asset('assets/images/profile2.png'),),
          //   ),
          //   decoration: BoxDecoration(
          //     color: Colors.transparent
          //   ),
          //   ),
          CustomListTile(
            icon: Icon(Icons.home),
            text: Text('Home'),
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomBottomNavigation(
                            isindex: 1,
                          )));
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomListTile(
            icon: Icon(Icons.business_center),
            text: Text('Cases'),
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CaseDetailScreen()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          Visibility(
            visible: controller.inVisiblecont2.value,
            child: CustomListTile(
              icon: Icon(Icons.mark_as_unread),
              text: Text('Categories'),
              ontap: () {},
            ),
          ),
          Visibility(
            visible: controller.inVisiblecont1.value,
            child: CustomListTile(
              icon: Icon(Icons.source),
              text: Text('Current Fund'),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CurrentFund()));
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomListTile(
            icon: Icon(Icons.history),
            text: Text('History'),
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomBottomNavigation(
                            isindex: 0,
                          )));
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomListTile(
            icon: Icon(Icons.settings),
            text: Text('Setting'),
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomBottomNavigation(
                            isindex: 3,
                          )));
            },
          ),
          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: 10,
          ),
          CustomListTile(
            icon: Icon(Icons.privacy_tip),
            text: Text('Privacy & Policy'),
            ontap: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          InkWell(
            onTap: () {
              logout(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.green,
                  size: 30,
                ),
                Text(
                  'Logout',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          )
        ],
      ),
    );
  }
   Future<void> logout(BuildContext context) async {
    CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final Widget icon;
  final Widget text;
  final Function() ontap;
  const CustomListTile(
      {super.key, required this.icon, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: Colors.white,
      textColor: Colors.white,
      leading: icon,
      title: text,
      onTap: ontap,
    );
  }
  
}

import 'package:donation_application/Components/flag_button.dart';
import 'package:donation_application/Components/search_textfield.dart';
import 'package:donation_application/Components/side_navigation.dart';
import 'package:donation_application/Screen/Dashboard/Sub_Screens/Case/case_description_detail.dart';
import 'package:donation_application/Screen/Dashboard/Sub_Screens/Case/case_detail_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseDescription extends StatelessWidget {
  const CaseDescription({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _search = TextEditingController();
    return Scaffold(
        // extendBodyBehindAppBar: true,
        drawer: SideNavigation(),
        appBar: AppBar(
          backgroundColor:Color.fromARGB(228, 0, 0, 0),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Case Detail',
            style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 14, color: Colors.white)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
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
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height * 0.43,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/casedetail.png'),
                          fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      CaseDetailProfile(),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hope Haven Trust',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Safeguarding homes, securing futures.',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'www.hopeheaven.com',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                            ),
                           FlagButton(),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: CaseDescriptionDetail(),
                )
              ],
            ),
          ),
        ));
  }
}

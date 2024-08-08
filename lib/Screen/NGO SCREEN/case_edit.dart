import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Components/side_navigation.dart';
import 'package:donation_application/Screen/Dashboard/case_detail.dart';
import 'package:donation_application/Screen/NGO%20SCREEN/Sub%20Screen/case_editdetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseEditScreen extends StatefulWidget {
  const CaseEditScreen({super.key});

  @override
  State<CaseEditScreen> createState() => _CaseEditScreenState();
}

class _CaseEditScreenState extends State<CaseEditScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideNavigation(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(228, 0, 0, 0),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Dashboard',
          style: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 14, color: Colors.white)),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Text('Hope Heaven Trust'),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/image5.png'),
                        radius: 30,
                      ),
                      Positioned(
                          child: Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 10,
                      ))
                    ],
                  )
                ],
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              CaseEditDetail(
                  heading: 'Case 1',
                  detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                  image: AssetImage('assets/case/image1.png'),
                  ontap: () {}),
                  SizedBox(height: 20,),
                  CaseEditDetail(
                  heading: 'Case 2',
                  detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                  image: AssetImage('assets/case/image2.png'),
                  ontap: () {}),
                  SizedBox(height: 20,),
                  CaseEditDetail(
                  heading: 'Case 3',
                  detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                  image: AssetImage('assets/case/image3.png'),
                  ontap: () {}),
                  SizedBox(height: 20,),
                  CaseEditDetail(
                  heading: 'Case 4',
                  detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                  image: AssetImage('assets/case/image4.png'),
                  ontap: () {}),
                  SizedBox(height: 20,),
                  CaseEditDetail(
                  heading: 'Case 5',
                  detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                  image: AssetImage('assets/case/image2.png'),
                  ontap: () {}),
                  // SizedBox(height: 20,),
                  RoundedButton(width: 110, buttontext: 'Save', onpressed: (){  
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CaseDetailScreen() ));
                  }, height: 15, bgcolor: Colors.green, textcolor: Colors.white)
                  ,SizedBox(height: 20,)
            ],
          )),
    );
  }
}


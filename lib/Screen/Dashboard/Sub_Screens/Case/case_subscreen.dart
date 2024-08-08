import 'package:donation_application/Screen/Dashboard/Sub_Screens/Catalogue/catalogue_casedetail.dart';
import 'package:donation_application/Screen/Dashboard/case_descriptions.dart';
import 'package:donation_application/Screen/NGO%20SCREEN/case_edit.dart';
import 'package:flutter/material.dart';

class CaseSubScreen extends StatelessWidget {
  const CaseSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CatalogueCasedetail(
              heading: 'Case 1',
              detail:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
              image: AssetImage('assets/case/image1.png'),
              textmore: 'View Details',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseDescription()));
              },
              textmore1: 'Edit Detail',
              textmore2: 'Disable',
              textmore3: 'Delete',
              ontapngo1: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
              },
              ontapngo2: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
              },
              ontapngo3: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(
              height: 10,
            ),
            CatalogueCasedetail(
                heading: 'Case 2',
                detail:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                image: AssetImage('assets/case/image2.png'),
                textmore: 'Edit Detail',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CaseDescription()));
                },
                textmore1: 'Edit Detail',
                textmore2: 'Disable',
                textmore3: 'Delete',
                ontapngo1: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CaseEditScreen()));
                },
                ontapngo2: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
                },
                ontapngo3: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
                }),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(
              height: 10,
            ),
            CatalogueCasedetail(
                heading: 'Case 3',
                detail:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                image: AssetImage('assets/case/image3.png'),
                textmore: 'Edit Detail',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CaseDescription()));
                },
                textmore1: 'Edit Detail',
                textmore2: 'Disable',
                textmore3: 'Delete',
                ontapngo1: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CaseEditScreen()));
                },
                ontapngo2: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
                },
                ontapngo3: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
                }),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(
              height: 10,
            ),
            CatalogueCasedetail(
                heading: 'Case 4',
                detail:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ',
                image: AssetImage('assets/case/image4.png'),
                textmore: 'Edit Detail',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CaseDescription()));
                },
                textmore1: 'Edit Detail',
                textmore2: 'Disable',
                textmore3: 'Delete',
                ontapngo1: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CaseEditScreen()));
                },
                ontapngo2: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
                },
                ontapngo3: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaseEditScreen()));
                }),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:donation_application/Screen/Dashboard/Sub_Screens/Catalogue/catalogue_detail.dart';
import 'package:donation_application/Screen/Dashboard/case_detail.dart';
import 'package:flutter/material.dart';

class CatalogTab extends StatelessWidget {
  const CatalogTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaseDetailScreen())); 
              },
              child: CatalogDetail(heading: 'NGO Name', detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ', image: AssetImage('assets/catalogue/image1.png'),textmore: 'Case Detail', 
              ontap: () { Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaseDetailScreen())); },),
            ),
            SizedBox(height: 10,),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(height: 10,),
            CatalogDetail(heading: 'NGO Name', detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ', image: AssetImage('assets/catalogue/image2.png'),textmore: 'Case Detail', ontap: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CaseDetailScreen())); },),
            SizedBox(height: 10,),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(height: 10,),
            CatalogDetail(heading: 'NGO Name', detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ', image: AssetImage('assets/catalogue/image3.png'), textmore: 'Case Detail', ontap: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CaseDetailScreen())); },),
            SizedBox(height: 10,),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(height: 10,),
            CatalogDetail(heading: 'NGO Name', detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. ', image: AssetImage('assets/catalogue/image4.png'),textmore: 'Case Detail', ontap: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CaseDetailScreen())); },),
            SizedBox(height: 10,),
            Divider(
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}


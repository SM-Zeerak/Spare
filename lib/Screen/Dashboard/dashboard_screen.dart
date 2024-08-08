import 'package:donation_application/Components/search_textfield.dart';
import 'package:donation_application/Components/side_navigation.dart';
import 'package:donation_application/Screen/Dashboard/Sub_Screens/Catalogue/catalogue_screen.dart';
import 'package:donation_application/Screen/Dashboard/Sub_Screens/Catagories/categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _search = TextEditingController();
    return Scaffold(
      // extendBodyBehindAppBar: true,
      drawer: SideNavigation(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(228, 0, 0, 0),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
                        'Case Detail',
                        style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.white)),
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
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/dashboard1.png'),fit: BoxFit.fill)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Explore',style: GoogleFonts.inter(
                            textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                          )),
                          Text('Categories',style: GoogleFonts.inter(
                            textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                          ),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.025,),
                    CategoriesTab()
                  ],
                ),
              ),
              Container(
                // color: Colors.amber,
                width: double.infinity,
                // height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    CatalogTab()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
     
    );
  }
}
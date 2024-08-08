import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotiScreen extends StatelessWidget {
  const NotiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // toolbarHeight: 40,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Notification',
            style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 14, color: Colors.white)),
          )),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/donationimage.png'),
                fit: BoxFit.fill)),
       child: SafeArea(
         child: 
         Column(
           children: [
             NotificationComponent(imagepath: 'assets/profile/image1.png', heading: 'Gabriel Thompson', text: 'This person has sent you \$150',),
            SizedBox(height: 10,),
            NotificationComponent(imagepath: 'assets/profile/image2.png', heading: 'Abigail Rose', text: 'This person has sent you \$350',),
            SizedBox(height: 10,),
            NotificationComponent(imagepath: 'assets/profile/image3.png', heading: 'Noah Hernandez', text: 'This person has sent you \$450',),
            SizedBox(height: 10,),  
            NotificationComponent(imagepath: 'assets/profile/image4.png', heading: 'Charlotte Hope', text: 'This person has sent you \$525',),
            SizedBox(height: 10,),  
            NotificationComponent(imagepath: 'assets/profile/image5.png', heading: 'Evelyn Grace', text: 'This person has sent you \$725',),
           
           ],
         )
       ),
      ),
    );
  }
}

class NotificationComponent extends StatelessWidget {
  final String imagepath;
  final String heading;
  final String text;
  const NotificationComponent({super.key, required this.imagepath, required this.heading, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              width: double.infinity,
              height: 93,
              decoration: BoxDecoration(
                color: Color.fromARGB(80, 0, 0, 0),
                border: Border.fromBorderSide(BorderSide(
                  color: Colors.white,
                  width: 0.6
         
                ))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
              width: 60,
              height: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                image: DecorationImage(
                    image: AssetImage(imagepath),
                    fit: BoxFit.fill),
                border:
                    Border.all(color: Colors.green, style: BorderStyle.solid),
                // color: Colors.amber,
              ),),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(heading, style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  Text(text, style: TextStyle(
                    fontSize: 10,
                    color: Colors.white
                  ),)
                ],
              ),
              SizedBox(width: 70,),
              Container(
                height: 85,
                // color: Colors.white,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_vert,color: Colors.white,)),
                  ],
                ))
                ],
              ),
            )
          ],
         );
  }
}
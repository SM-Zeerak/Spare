import 'package:donation_application/Screen/Dashboard/dashboard_screen.dart';
import 'package:donation_application/Screen/Dashboard/history.dart';
import 'package:donation_application/Screen/Dashboard/notification.dart';
import 'package:donation_application/Screen/Dashboard/setting.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  final int isindex;
  const CustomBottomNavigation({super.key, required this.isindex, });

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int myIndex = 1;
 List widgetList = const [
  HistoryPage(),
  DashboardScreen(),
  NotiScreen(),
  SettingPage()
 ];
 @override
  void initState() {
    super.initState();
    // TODO: implement initState
    myIndex = widget.isindex;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Container(
        
        child: widgetList[myIndex],
      ),
      bottomNavigationBar: 
      Theme(data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.green,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.red,
        textTheme: Theme
            .of(context)
            .textTheme
            ),
      child:Container(
        // padding: EdgeInsets.only(left: 20,right: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
          
        color: Color(0xfff36984B),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xfff36984B),
          iconSize: 40,
          selectedIconTheme: IconThemeData(
            color: Colors.white,
            
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black45
          ),
          type: BottomNavigationBarType.shifting,
          onTap: (index){
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.restore_outlined,size: MediaQuery.of(context).size.width * 0.08,),label: '--',backgroundColor:Color(0xfff36984B),),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: MediaQuery.of(context).size.width * 0.08), label: '--',backgroundColor:Color(0xfff36984B)),
           BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined, size: MediaQuery.of(context).size.width * 0.08), label: '--',backgroundColor:Color(0xfff36984B)),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined, size: MediaQuery.of(context).size.width * 0.08), label: '--',backgroundColor:Color(0xfff36984B)),
        ]),
      )
      ,)
      
    );
  }
}
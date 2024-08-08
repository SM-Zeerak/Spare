import 'package:donation_application/Components/follow_button.dart';
import 'package:donation_application/Config/popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CaseDetailProfile extends StatelessWidget {
  const CaseDetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    PopUpController controller = Get.put(PopUpController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 117,
          height: 117,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            image: DecorationImage(image: AssetImage('assets/images/profile.png'),fit: BoxFit.fill),
            border: Border.all(color: Colors.green,style: BorderStyle.solid),
            // color: Colors.amber,
          ),
        ),
        SizedBox(width: 20,),
        Stack(
          children:[ Visibility(
            visible: controller.inVisiblecont2.value,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('12k',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                          Text('Subscriber',style: TextStyle(color: Colors.white,fontSize: 15),)
                        ],
                      ),
                      SizedBox(width: 30,),
                       Column(
                        children: [
                          Text('98%',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                          Text('Sucess Rate',style: TextStyle(color: Colors.white,fontSize: 15),)
                        ],
                      ),
                     
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                 FollowButton()
              ],
            ),
          ),
          Visibility(
            visible: controller.inVisiblecont1.value,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('4',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('Cases',style: TextStyle(color: Colors.white,fontSize: 10),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text('12k',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('asdasfasdf',style: TextStyle(color: Colors.white,fontSize: 10),)
                        ],
                      ),
                      SizedBox(width: 20,),
                       Column(
                        children: [
                          Text('98%',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('Sucess Rate',style: TextStyle(color: Colors.white,fontSize: 10),)
                        ],
                      ),
                     
                    ],
                  ),
                ),
                SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  width: 161,
                  height: 31,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff100F0F)
                  ),
                  child: Center(
                    child: Text('Share Profile',style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              )
              ],
            ),
          ),
      ]),
      ],
    );
  }
}
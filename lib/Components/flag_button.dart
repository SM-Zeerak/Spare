import 'package:donation_application/Config/popup_controller.dart';
import 'package:donation_application/Screen/NGO%20SCREEN/Sub%20Screen/request_fund.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FlagButton extends StatefulWidget {
  const FlagButton({super.key});

  @override
  State<FlagButton> createState() => _FlagButtonState();
}

class _FlagButtonState extends State<FlagButton> {
  bool isFlagged = true;
  
  @override
  Widget build(BuildContext context) {
    PopUpController controller = Get.put(PopUpController());
    return Stack(
      children:[ Visibility(
        visible: controller.inVisiblecont2.value,
        child: Container(
          child: GestureDetector(
            onTap: (){
              setState((){
                isFlagged = !isFlagged;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 80,
              width: 65,
              decoration: BoxDecoration(
                // color: isFlagged ? Colors.orange : Colors.green,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: isFlagged ? Colors.orange : Colors.green,)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    !isFlagged ? Icon(Icons.flag ,color: isFlagged ? Colors.orange.shade700 : Colors.green,size: 20,): Icon(Icons.flag ,color: isFlagged ? Colors.orange.shade700 : Colors.green,size: 20,),
                    // SizedBox(width: 10,),
                    Text('Set', style: TextStyle(
                      color: isFlagged ? Colors.orange.shade700 : Colors.green,fontSize: 10  
                    ),),
                    Text('Roundup', style: TextStyle(
                      color: isFlagged ? Colors.orange.shade700 : Colors.green,fontSize: 10  
                    ),),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      Visibility(
        visible: controller.inVisiblecont1.value,
        child: Container(
          child: GestureDetector(
            onTap: (){
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RequestFund()));
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 80,
              width: 65,
              decoration: BoxDecoration(
                // color: isFlagged ? Colors.orange : Colors.green,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:  Colors.green,)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle ,color: Colors.green,size: 30,),
                    SizedBox(width: 10,),
                    Text('Create', style: TextStyle(
                      color:  Colors.green,fontSize: 15  
                    ),),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
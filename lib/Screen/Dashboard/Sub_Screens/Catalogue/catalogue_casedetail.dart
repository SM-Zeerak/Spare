import 'package:donation_application/Config/popup_controller.dart';
import 'package:donation_application/Screen/Dashboard/case_descriptions.dart';
import 'package:donation_application/Screen/NGO%20SCREEN/case_edit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CatalogueCasedetail extends StatelessWidget {
  final String heading;
  final String detail;
  final ImageProvider image;
  final String textmore;
  final String textmore1;
  final String textmore2;
  final String textmore3;
  final Function() ontap;
  final Function() ontapngo1;
  final Function() ontapngo2;
  final Function() ontapngo3;
  const CatalogueCasedetail(
      {super.key,
      required this.heading,
      required this.detail,
      required this.image,
      required this.textmore,
      required this.ontap,
      required this.textmore1,
      required this.textmore2,
      required this.ontapngo1,
      required this.ontapngo2,
      required this.ontapngo3,
      required this.textmore3});

  @override
  Widget build(BuildContext context) {
    PopUpController controller = Get.put(PopUpController());
    return InkWell(
      onTap: () {
        if (controller.inVisiblecont1.isFalse) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CaseDescription()));
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CaseEditScreen()));
        }
      },
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 82,
              height: 84,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: image, fit: BoxFit.fill)),
            ),

            SizedBox(
              width: 10,
            ),
            Container(
              // color: Colors.amber,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    detail,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            // SizedBox(width: MediaQuery.of(context).size.width * 0.0001,),
            Container(
              // color: Colors.amber,
              child: Stack(children: [
                Visibility(
                  visible: controller.inVisiblecont1.value,
                  child: Container(
                    //NGO
                    child: PopupMenuButton(
                      itemBuilder: (BuildContext bc) {
                        return [
                          PopupMenuItem(
                            onTap: ontapngo1,
                            value: '/hello',
                            child: Text(textmore1),
                          ),
                          PopupMenuItem(
                            onTap: ontapngo2,
                            value: '/hello',
                            child: Text(textmore2),
                          ),
                          PopupMenuItem(
                            onTap: ontapngo3,
                            value: '/hello',
                            child: Text(textmore3),
                          ),
                        ];
                      },
                    ),
                  ),
                ),
                Visibility(
                  visible: controller.inVisiblecont2.value,
                  child: Container(
                    //Donor
                    child: PopupMenuButton(
                      itemBuilder: (BuildContext bc) {
                        return [
                          PopupMenuItem(
                            onTap: ontap,
                            value: '/hello',
                            child: Text(textmore),
                          ),
                        ];
                      },
                    ),
                  ),
                ),
              ]),
            )
          ]),
    );
  }
}

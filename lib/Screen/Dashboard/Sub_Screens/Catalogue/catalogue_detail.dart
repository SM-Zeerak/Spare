import 'package:flutter/material.dart';

class CatalogDetail extends StatelessWidget {
  final String heading;
  final String detail;
  final ImageProvider image;
  final String textmore;
  final Function() ontap;
  const CatalogDetail(
      {super.key,
      required this.heading,
      required this.detail,
      required this.image,
      required this.textmore,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 82,
          height: 84,
          decoration: BoxDecoration(
              image: DecorationImage(image: image, fit: BoxFit.fill)),
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
            //NGO
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
      ],
    );
  }
}

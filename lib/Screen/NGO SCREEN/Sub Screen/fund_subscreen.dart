import 'package:donation_application/Screen/NGO%20SCREEN/Sub%20Screen/request_fund.dart';
import 'package:flutter/material.dart';

class FundSubscreen extends StatelessWidget {
 
  final String image;
  final String name;
  final String detail;
  final String caseid;
  final String amount;
  final Function()? ontap;

 
  const FundSubscreen({super.key, required this.image, required this.name, required this.detail, required this.caseid, required this.amount,  this.ontap});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 100,
      // color: Colors.amber,
      child: InkWell(
        onTap: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => RequestFund())
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 30,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),),
                  SizedBox(height: 2,),
                  Container(
                    width: 250,
                    child: Text(
                        detail,
                        style: TextStyle(
                          fontSize: 10,
                        ),),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // fixedSize: Size(100, 10),
                      minimumSize: Size(100, 25),
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    child: Text(
                      'View Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(caseid,style: TextStyle(
                      color: Colors.grey,
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                      color: Color(0xff12BB36),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

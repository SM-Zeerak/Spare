import 'package:donation_application/Components/custom_textfield.dart';
import 'package:donation_application/Components/rounded_button.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _cardnumber = TextEditingController();
    TextEditingController _expdate = TextEditingController();
    TextEditingController _cvv = TextEditingController();
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pay With'),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/payment.png'),
            SizedBox(
              height: 30,
            ),
            Container(
              // height: 200,
              width: double.infinity,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Card Number'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                      controller: _cardnumber,
                      hinttext: 'Type your card number',
                      passwordhide: false,
                      width: 240, textfielcolor: Color.fromARGB(243, 237, 237, 237) , textcolor: Colors.black, bordercolor: Colors.white),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Exp Date'),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextfield(
                              controller: _expdate,
                              hinttext: 'Exp Date',
                              passwordhide: false,
                              width: 119, textfielcolor: Color.fromARGB(243, 237, 237, 237) , textcolor: Colors.black, bordercolor: Colors.white)
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('CVV'),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextfield(
                              controller: _cvv,
                              hinttext: 'CVV',
                              passwordhide: false,
                              width: 80, textfielcolor: Color.fromARGB(243, 237, 237, 237) , textcolor: Colors.black, bordercolor: Colors.white)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            RoundedButton(width: 110, buttontext: 'Pay Now', onpressed: (){}, height: 30, bgcolor: Colors.blue, textcolor: Colors.white)
          ],
        ),
      ),
    );
  }
}

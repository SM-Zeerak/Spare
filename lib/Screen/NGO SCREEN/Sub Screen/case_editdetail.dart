import 'package:donation_application/Components/compaign_button.dart';
import 'package:flutter/material.dart';

class CaseEditDetail extends StatefulWidget {
  final String heading;
  final String detail;
  final ImageProvider image;
  final Function() ontap;
  const CaseEditDetail(
      {super.key,
      required this.heading,
      required this.detail,
      required this.image,
      required this.ontap});

  @override
  State<CaseEditDetail> createState() => _CaseEditDetailState();
}

class _CaseEditDetailState extends State<CaseEditDetail> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          // color: Colors.green,
          width: double.infinity,
          child: Column(children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 82,
                  height: 84,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: widget.image, fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  // color: Colors.amber,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            // color: Colors.amber,
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.3,
                                  // color: Colors.blue,
                                  child: Text(
                                    widget.heading,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.delete_outline,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.edit_square,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            widget.detail,
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              CompaignButton(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // SizedBox(width: MediaQuery.of(context).size.width * 0.0001,),
                
              ],
            ),
            Center(
              child: Container(
                // color: Colors.amber,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 105,
                      // color: Colors.black,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        horizontalTitleGap: -5,
                        title: const Text(
                          'Active',
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Radio<int>(
                          value: 1,
                          groupValue: selectedOption,
                          // activeColor: Colors.red, // Change the active radio button color here
                          // fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
                          splashRadius:
                              5, // Change the splash radius when clicked
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: 110,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        horizontalTitleGap: -5,
                        title: const Text(
                          'Disable',
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Radio<int>(
                          value: 2,
                          groupValue: selectedOption,
                          // activeColor: Colors.red, // Change the active radio button color here
                          // fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
                          splashRadius:
                              5, // Change the splash radius when clicked
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
            ),
          ])),
    );
  }
}

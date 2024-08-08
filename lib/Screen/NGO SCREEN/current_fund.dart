import 'package:donation_application/Components/rounded_button.dart';
import 'package:donation_application/Components/side_navigation.dart';
import 'package:donation_application/Screen/NGO%20SCREEN/Sub%20Screen/fund_subscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentFund extends StatefulWidget {
  const CurrentFund({super.key});

  @override
  State<CurrentFund> createState() => _CurrentFundState();
}

class _CurrentFundState extends State<CurrentFund> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideNavigation(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(228, 0, 0, 0),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Funds',
            style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 14, color: Colors.white)),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Text('Hope Heaven Trust'),
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image5.png'),
                          radius: 30,
                        ),
                        Positioned(
                            child: Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 10,
                        ))
                      ],
                    )
                  ],
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.green,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      // height: MediaQuery.of(context).size.height * 0.43,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/casedetail.png'),
                              fit: BoxFit.fill)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                // color: Colors.amber,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Current Funds',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // SizedBox(height: 10,),
                                    Text(
                                      '\$ 2,200',
                                      style: TextStyle(
                                        color: Color(0xff12BB36),
                                        fontSize: 38,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 126,
                                height: 109,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/monitoring.png')),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          FundSubscreen(
                            image: 'assets/images/image1.png',
                            name: 'Gabriel Thompson',
                            detail:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            caseid: 'Case 1: ID# 001',
                            amount: '\$150',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            endIndent: 30,
                            indent: 30,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FundSubscreen(
                            image: 'assets/images/image2.png',
                            name: 'Abigail Rose',
                            detail:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            caseid: 'Case 1: ID# 001',
                            amount: '\$350',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            endIndent: 30,
                            indent: 30,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FundSubscreen(
                            image: 'assets/images/image3.png',
                            name: 'Noah Hernandez',
                            detail:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            caseid: 'Case 1: ID# 001',
                            amount: '\$450',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            endIndent: 30,
                            indent: 30,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FundSubscreen(
                            image: 'assets/images/image4.png',
                            name: 'Charlotte Hope',
                            detail:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            caseid: 'Case 1: ID# 001',
                            amount: '\$525',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            endIndent: 30,
                            indent: 30,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FundSubscreen(
                            image: 'assets/images/image5.png',
                            name: 'Evelyn Grace',
                            detail:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            caseid: 'Case 1: ID# 001',
                            amount: '\$750',
                          ),
                          Container(
                            
                            width: double.infinity,
                            child: Visibility(
                                visible: isVisible,
                                maintainAnimation: true,
                                // maintainSize: true,
                                maintainState: true,
                                child: const Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                      endIndent: 30,
                                      indent: 30,
                                      thickness: 2,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FundSubscreen(
                                      image: 'assets/images/image3.png',
                                      name: 'Evelyn Sam',
                                      detail:
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                      caseid: 'Case 1: ID# 001',
                                      amount: '\$1,750',
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                      endIndent: 30,
                                      indent: 30,
                                      thickness: 2,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FundSubscreen(
                                      image: 'assets/images/image2.png',
                                      name: 'David Mick',
                                      detail:
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                      caseid: 'Case 1: ID# 001',
                                      amount: '\$950',
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RoundedButton(
                              width: 103,
                              buttontext: 'Load More',
                              onpressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              height: 40,
                              bgcolor: Colors.white,
                              textcolor: Colors.grey),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          )
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}

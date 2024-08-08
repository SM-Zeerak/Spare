import 'package:donation_application/Components/custom_textfield.dart';
import 'package:donation_application/Components/custom_textfield_multiline.dart';
import 'package:donation_application/Components/dropdown_category.dart';
import 'package:donation_application/Components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestFund extends StatefulWidget {
  const RequestFund({super.key});

  @override
  State<RequestFund> createState() => _RequestFundState();
}

class _RequestFundState extends State<RequestFund> {
  TextEditingController _title = TextEditingController();
  TextEditingController _description = TextEditingController();
  TextEditingController _amount = TextEditingController();
  TextEditingController _dueDate = TextEditingController();
  // TextEditingController _category = TextEditingController();
  TextEditingController _location = TextEditingController();

  final List listimage = [
    'assets/categories/image1.png',
    'assets/categories/image2.png',
    'assets/categories/image3.png',
    'assets/categories/image2.png',
    'assets/categories/image3.png',
  ];

  final List<String> dropdownitem = ['Health', 'Care', 'Donate'];
  // String _selecteditem = 'Health';

  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Back',
          style: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("REQUEST A FUND",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Title'),
                    CustomTextfield(
                        controller: _title,
                        hinttext: "",
                        passwordhide: false,
                        width: 285,
                        textfielcolor: Colors.white,
                        textcolor: Colors.black,
                        bordercolor: Colors.black)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description'),
                    CustomTextMultiline(
                        controller: _description,
                        hinttext: "",
                        passwordhide: false,
                        width: 285,
                        textfielcolor: Colors.white,
                        textcolor: Colors.black,
                        bordercolor: Colors.black)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Amount Goal'),
                        CustomTextfield(
                            controller: _amount,
                            hinttext: "",
                            passwordhide: false,
                            width: 139,
                            textfielcolor: Colors.white,
                            textcolor: Colors.black,
                            bordercolor: Colors.black)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Due Date'),
                        CustomTextfield(
                          icon: Container(
                            margin: EdgeInsets.only(right: 10, left: 5),
                            child: Icon(Icons.calendar_month),
                          ),
                          controller: _dueDate,
                          hinttext: "",
                          passwordhide: false,
                          width: 139,
                          textfielcolor: Colors.white,
                          textcolor: Colors.black,
                          bordercolor: Colors.black,
                          ontap: () {
                            _selectDate();
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Category'), DropDownCategory()],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Location'),
                        CustomTextfield(
                            controller: _location,
                            hinttext: "",
                            passwordhide: false,
                            width: 139,
                            textfielcolor: Colors.white,
                            textcolor: Colors.black,
                            bordercolor: Colors.black)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 285,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffD9D9D9)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 47,
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.amber,
                          border: Border.all(color: Colors.grey)
                        ),
                        child: Icon(Icons.add),
                      ),
                      Container(
                        width: 222,
                        height: 60,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listimage.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 47,
                                      width: 47,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(listimage[index]),
                                              fit: BoxFit.cover),
                                          // color: Colors.amber,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 1,color: Colors.grey)),
                                          
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 285,
                // color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Allow Comment', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500
                    ),),
                    Container(
                      // color: Colors.amber,
                      width: 200,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(1),
                        title: const Text('No Comments'),
                        leading: Radio<int>(
                          value: 1,
                          groupValue: selectedOption,
                          // activeColor: Colors.red, // Change the active radio button color here
                          // fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
                          splashRadius:
                              20, // Change the splash radius when clicked
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: 210,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(1),
                        title: const Text('Private Comments'),
                        leading: Radio<int>(
                          value: 2,
                          groupValue: selectedOption,
                          // activeColor: Colors.red, // Change the active radio button color here
                          // fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
                          splashRadius:
                              20, // Change the splash radius when clicked
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('Public Comments'),
                      contentPadding: EdgeInsets.all(2),
                      leading: Radio<int>(
                        value: 3,
                        groupValue: selectedOption,
                        // activeColor: Colors.red, // Change the active radio button color here
                        // fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
                        splashRadius:
                            20, // Change the splash radius when clicked
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: RoundedButton(
                            width: 165,
                            buttontext: 'Submit Request',
                            onpressed: () {
                              Navigator.pop(context);
                            },
                            height: 40,
                            bgcolor: Colors.green,
                            textcolor: Colors.white)),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1985),
        lastDate: DateTime(2080));

    if (_picked != null) {
      setState(() {
        _dueDate.text = _picked.toString().split(" ")[0];
      });
    }
  }
}

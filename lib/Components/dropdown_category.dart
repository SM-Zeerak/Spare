import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DropDownCategory extends StatefulWidget {
  
  const DropDownCategory({super.key});

  @override
  State<DropDownCategory> createState() => _DropDownCategoryState();
}

class _DropDownCategoryState extends State<DropDownCategory> {
  final List<String> genderItems = [
  'Health',
  'Donor',
  'Care'
];

String? selectedValue;

final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 139,
     height: 50,
     decoration: BoxDecoration(
      color:  Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 1)
     ),
    child: Form(
      key: _formKey,
      child: DropdownButtonFormField2<String>(
              
              isExpanded: true,
              decoration: InputDecoration(
                // Add Horizontal padding using menuItemStyleData.padding so it matches
                // the menu padding when button's width is not specified.
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                // Add more decoration..
              ),
              
              items: genderItems
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Select Role';
                }
                return null;
              },
              onChanged: (value) {
                //Do something when selected item is changed.
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
    ),
  );
  }
}
import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
   final List listimage = [
    'assets/categories/image1.png',
    'assets/categories/image2.png',
    'assets/categories/image3.png', 
    'assets/categories/image2.png',
    'assets/categories/image3.png',
  ];
   final List listtext = [
    'Local',
    'Health',
    'Loream', 
    'Histoy',
    'Donation',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 140, 
      // width: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listimage.length,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 101,
                width:82,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(listimage[index]),fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text(listtext[index],style: TextStyle(
                  fontSize: 14,
                  color: Colors.white
                ),)),
                ),
            ],
          ),
        );
      }),
    );
  }
}
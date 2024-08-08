import 'package:donation_application/Screen/Dashboard/Sub_Screens/Catagories/categories_list.dart';
import 'package:flutter/material.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({super.key});

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  final List listimage = [
    'assets/categories/image1.png',
    'assets/categories/image2.png',
    'assets/categories/image3.png',
    'assets/categories/image2.png',
    'assets/categories/image3.png',
  ]; 
  @override
  Widget build(BuildContext context) {
    return CategoriesList();
  }
}

class CategoriesContainer extends StatelessWidget {
   final String text;
   final ImageProvider image;
  const CategoriesContainer({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: (){},
        child: Container(
                          width: 82,
                          height: 101,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // image: DecorationImage(image: image)
                          ),
                          child: Center(
                            child: Text(text,style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                        ),
      );
  }
}
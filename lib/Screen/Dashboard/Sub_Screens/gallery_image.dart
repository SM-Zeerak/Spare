import 'package:flutter/material.dart';

class GalleryImage extends StatefulWidget {
  
  const GalleryImage({super.key});
  
  @override
  State<GalleryImage> createState() => _GalleryImageState();
}

class _GalleryImageState extends State<GalleryImage> {
  final List listimage = [
    'assets/slider/image1.png',
    'assets/slider/image2.png',
    'assets/slider/image1.png',
    'assets/slider/image2.png',
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
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width:177,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(listimage[index]),fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20)
                ),
                ),
            ],
          ),
        );
      }),
    );
  }
}

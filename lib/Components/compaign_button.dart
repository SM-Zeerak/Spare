import 'package:flutter/material.dart';

class CompaignButton extends StatefulWidget {
  const CompaignButton({super.key});

  @override
  State<CompaignButton> createState() => _CompaignButtonState();
}

class _CompaignButtonState extends State<CompaignButton> {
 
  bool isFollowing = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          setState((){
            isFollowing = !isFollowing;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 20,
          width: 95,
          decoration: BoxDecoration(
            color: isFollowing ? Colors.green.shade700 : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: isFollowing ? Colors.green.shade700 : Colors.grey,)
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(isFollowing ? 'Finish Compaign'  : 'Finished Compaign', style: isFollowing ? TextStyle(
                  color: Colors.white,fontSize: 10, fontWeight: FontWeight.bold
                ): TextStyle(
                  color: Colors.green,fontSize: 10, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
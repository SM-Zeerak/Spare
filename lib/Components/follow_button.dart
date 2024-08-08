import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({super.key});

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
 
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
          height: 30,
          width: 150,
          decoration: BoxDecoration(
            color: isFollowing ? Colors.green.shade700 : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: isFollowing ? Colors.green.shade700 : Colors.grey,)
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !isFollowing ? Icon(Icons.done_all ,color: Colors.white,): SizedBox(),
                SizedBox(width: 10,),
                Text(isFollowing ? 'Follow' : 'Following', style: TextStyle(
                  color: Colors.white
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
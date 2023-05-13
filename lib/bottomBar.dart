import 'package:flutter/material.dart';
//import 'registerMeeting.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(icon: Image.asset("assets/images/Bottombar_first.png"),onPressed: () {},),
        IconButton(icon: Image.asset("assets/images/Bottombar_second.png"),onPressed: () {},),
        IconButton(icon: Image.asset("assets/images/Bottombar_center.png"),onPressed: () {
          /*Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => RegisterMeeting()));
          */},
        ),
        IconButton(icon: Image.asset("assets/images/Bottombar_third.png"),onPressed: () {},),
        IconButton(icon: Image.asset("assets/images/Bottombar_fourth.png"),onPressed: () {},),
      ],
    );
  }
}

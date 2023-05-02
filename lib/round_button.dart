import 'package:flutter/material.dart';


class Round_Button extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  const Round_Button({Key? key,
    required this.title,
  required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width *0.8,
        decoration: BoxDecoration(
          color: Color(0xffFFC38C),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(child:
        Text(title, style: TextStyle(color: Colors.black,fontSize: 20 ),)),
      ),
    );
  }
}

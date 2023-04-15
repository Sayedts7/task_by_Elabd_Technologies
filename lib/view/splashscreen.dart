import 'package:flutter/material.dart';
import 'package:untitled1/round_button.dart';
import 'package:untitled1/view/loginview.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.brown, Colors.black87])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage('assets/earth.png')),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Center(child: Text('Yorem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(color: Colors.white, fontSize: 20),)),
                ),
                Round_Button(title: 'Get Started', onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginView()));
                }),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 70.0),
                 child: Row(
                   children: const [
                     Text('Already have an account ?', style: TextStyle(color: Colors.white),),
                     Text(' Sign In', style: TextStyle(
                      color: Color(0xffFFC38C),
                     ),)
                   ],
                 ),
               ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

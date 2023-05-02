import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/round_button.dart';
import 'package:untitled1/view/video_screen.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.04),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                          color: Color(0xffFFC38C),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                          color: Color(0xffFFC38C),
                        ),
                        filled: true,
                        fillColor: Color(0xff7a7373),
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'Email address',
                      hintStyle: TextStyle(
                        color: Color(0xffFFC38C),
                      ),
                      filled: true,
                      fillColor: Color(0xff7a7373),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Color(0xff7a7373),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xffFFC38C),
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color(0xff7a7373),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        color: Color(0xffFFC38C),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Round_Button(title: 'Sign Up', onpress: () {

                      Navigator.push(context,MaterialPageRoute(builder: (context)=> VideoView()));
                    }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.052),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 2,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),

                        const Text(
                          'Or',
                          style: TextStyle(fontSize: 14,color: Colors.white),
                        ),
                        SizedBox(width: 5),

                        Container(
                          width: 100,
                          height: 2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),

                              border: Border.all( color: Colors.white)),
                          child:  const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Image(
                              image: AssetImage('assets/g.png'),),
                          ),
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),

                            border: Border.all( color: Colors.white)),
                    child:  const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(
                        image: AssetImage('assets/app.png'),),
                    ),
                  ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),

                              border: Border.all( color: Colors.white)),
                          child:  const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Image(
                              image: AssetImage('assets/fb.png'),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Dont have an account?', style: TextStyle(color: Colors.white),),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xffFFC38C),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled1/round_button.dart';
import 'package:untitled1/view/register.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.brown, Colors.black87])),
          child:SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.04),
                    child: const Text(
                      'Welcome',
                      style: TextStyle(
                          color: Color(0xffFFC38C),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: TextFormField(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Color(0xff7a7373),
                        filled: true,
                        suffixIcon:Icon(
                          Icons.visibility,
                          color:  Color(0xffFFC38C),
                        ) ,
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

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('Forgot password?', style: TextStyle(fontSize: 15, color: Color(0xffFFC38C),
                        ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Round_Button(title: 'Sign In', onpress: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUpView()));
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
                        const Text(
                          ' OR ',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
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
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white
                              )),

                          child: Icon(Icons.apple_outlined, color: Colors.white,),
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(border: Border.all( color: Colors.white)),
                            child: Icon(Icons.facebook_outlined,  color: Colors.white)),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(border: Border.all( color: Colors.white)),
                          child: Icon(Icons.apple_outlined,  color: Colors.white),
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
                      Text('Dont have an account?', style: TextStyle( color: Colors.white),),
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



import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/utils/route_name.dart';
import 'package:to_do_app/widgets/button.dart';

import '../const.dart';
import '../widgets/textformfiled.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final TextEditingController _name = TextEditingController();
    final TextEditingController _email = TextEditingController();
      final TextEditingController _password = TextEditingController();
      final TextEditingController _cpassword = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   const Text('Welcome onboard!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                   const SizedBox(height: 20,),
                   const  Text('  Let’s help you meet your tasks', style: TextStyle( fontSize: 15),),
                    const SizedBox(height: 80,),
                    TextFieldExample(hintText: 'Enter your full name',controller: _name,),
                     const SizedBox(height: 20,),
                     TextFieldExample(hintText: 'Enter your email',controller: _email,),
                      const SizedBox(height: 20,),
                     TextFieldExample(hintText: 'Enter password',controller: _password,),
                     const SizedBox(height: 20,),
                     TextFieldExample(hintText: 'Confirm password',controller: _cpassword,),
                     const SizedBox(height: 80,),
                     ButtonWidget(textmessage: 'Register',onTap: (){
                    Navigator.pushNamed(context, RouteName.login_screen);
                  },),
                   const SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            text: 'Already have an account? ',
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Sign In',
                                style: const TextStyle(
                                  color: Constants.primaryColor,
                                  fontWeight: FontWeight.bold
                                 
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacementNamed(
                                      context,
                                      RouteName.login_screen,
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
      
                ],
              ),
            ),
          ),
           const Positioned(child: Image(image: AssetImage(Constants.shape_image),),)
            ],
          )
        ),
      ),
    );
  }
}
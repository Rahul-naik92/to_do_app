import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/const.dart';
import 'package:to_do_app/utils/route_name.dart';
import 'package:to_do_app/widgets/button.dart';
import 'package:to_do_app/widgets/textformfiled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final TextEditingController _email = TextEditingController();
      final TextEditingController _password = TextEditingController();

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
                   const Text('Welcome back!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                   const SizedBox(height: 20,),
                   const  Text('  Let’s help you meet your tasks', style: TextStyle( fontSize: 15),),
                    const SizedBox(height: 20,),
                    const Image(image: AssetImage(Constants.login_image),),
                    const SizedBox(height: 50,),
                    TextFieldExample(hintText: 'Enter your full name',controller: _email,),
                     const SizedBox(height: 20,),
                    TextFieldExample(hintText: 'Enter password',controller: _password,),
                    
                     const SizedBox(height: 50,),
                     ButtonWidget(textmessage: 'Login',onTap: (){
                    Navigator.pushNamed(context, RouteName.dashboard_screen);
                  },),
                   const SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            text: 'Dont have an account? ',
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Sign Up',
                                style: const TextStyle(
                                  color: Constants.primaryColor,
                                  fontWeight: FontWeight.bold
                                 
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacementNamed(
                                      context,
                                      RouteName.registration_screen,
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
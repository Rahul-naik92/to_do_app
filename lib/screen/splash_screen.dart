
import 'package:flutter/material.dart';
import 'package:to_do_app/utils/route_name.dart';

import '../const.dart';
import '../widgets/button.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
      
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  <Widget>[
                  
                      const Image(image: AssetImage(Constants.splashlogo),),
                      const SizedBox(height: 60,),
                      const Text('Get things done with ToDo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                            
                       const SizedBox(height: 60,),
                     const  Text('  Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Amet.', style: TextStyle( fontSize: 15),),
                            
                       const SizedBox(height: 80,),
                            
                      ButtonWidget(textmessage: 'Get Started',onTap: (){
                        Navigator.pushNamed(context, RouteName.registration_screen);
                      },)
                  
                    ],
                  ),
                ),
              ),
              const Positioned(child: Image(image: AssetImage(Constants.shape_image),),)
            ],
          ),
        ),
      ),
    );
  }
}
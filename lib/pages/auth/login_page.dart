import 'package:flutter/material.dart';
import 'package:login_screen_design/components/my_button.dart';
import 'package:login_screen_design/components/my_textfield.dart';
import 'package:login_screen_design/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //text editing controllers
    final usernameController = TextEditingController();
    final passswordController = TextEditingController();

    void signUserIn() {}

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),

              //Logo
              Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 50,
              ),

              //Welcome back
              Text(
                'Welcome Back, You\'ve been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 50,
              ),

              //username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10.0,
              ),

              //password
              MyTextField(
                controller: passswordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 10.0,
              ),
              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25.0,
              ),

              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(
                height: 50.0,
              ),

              //Other sign-ins

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Text('Or continue with',
                    style: TextStyle(
                      color: Colors.grey[600]
                    ),),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 50.0,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/cliq_logo.png'),
                  SizedBox(width: 25.0,),
                  SquareTile(imagePath: 'lib/images/cliq_logo.png'),
                ],
              ),

              const SizedBox(height: 50.0,),
              
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?'),
                  SizedBox(width: 4,),
                  Text('Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              )
              //Register now option
            ],
          ),
        ),
      ),
    );
  }
}

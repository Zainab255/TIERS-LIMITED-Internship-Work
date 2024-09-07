import 'package:flutter/material.dart';
import 'Registerpage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome back! Glad to see you, Again!',
                textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24,
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  filled: true, fillColor: Colors.grey[100], border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                child: Text('Login' , style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric( horizontal : 216 , vertical: 20.0), backgroundColor: Color(0xFF626BFC),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[Expanded(child: Divider(thickness: 1)), Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("Or Login with"),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),



              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Facebook button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue, backgroundColor: Colors.white, // Foreground (text/icon) color
                      elevation: 2,
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20,),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Image.asset('assets/facebook.png', height: 24),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('Google button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red, backgroundColor: Colors.white, // Foreground (text/icon) color
                      elevation: 2,
                      padding: EdgeInsets.symmetric(horizontal: 100 , vertical: 20,),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Image.asset('assets/google.png', height: 24),
                  ),
                ],
              ),



              SizedBox(height: 20),
              Center(
                child : GestureDetector( onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()),);
                },
                child: RichText(
                  text: TextSpan(text: 'Don\'t have an account? ', style: TextStyle(color: Colors.black),
                    children: <TextSpan>[TextSpan(text: 'Register Now', style: TextStyle(color: Colors.blue),
                        // recognizer: TapGestureRecognizer()
                        // ..onTap (),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

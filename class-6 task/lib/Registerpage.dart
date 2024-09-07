import 'package:untitled/LoginPage.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'main/AppBar.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                'Hello! Register to Get Started,',
                textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24,
              ),
              ),

              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'First Name',
                  filled: true, fillColor: Colors.grey[100], border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0),
                ),
                ),
              ),


              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  filled: true, fillColor: Colors.grey[100], border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0),
                ),
                ),
              ),


              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true, fillColor: Colors.grey[100], border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0),
                ),
                ),
              ),


              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'password',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),





              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopPage()),
                  );
                },

                child: Text('Register' , style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric( horizontal : 205 , vertical: 20.0), backgroundColor: Color(0xFF626BFC),
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
                child : GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()),);
                  },

                child: RichText(
                  text: TextSpan(text: 'Already have an account? ', style: TextStyle(color: Colors.black),
                    children: <TextSpan>[TextSpan(text: 'Login Now', style: TextStyle(color: Colors.blue),
                      // recognizer: TapGestureRecognizer()
                      // ..onTap = _registerNow,
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

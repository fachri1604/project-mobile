import 'package:flutter/material.dart';
// import 'package:melicon/home.dart';
// import 'signup.dart';
import 'package:melicon/widget/custom.dart';
import 'login.dart';
// import 'home.dart';


class SignInPage2 extends StatelessWidget {
  const SignInPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Molicon',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(58, 16, 195, 255),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Melicon',style: CustomFont.lora1,
              ),
              SizedBox(height: 20),
              Text('Temukan baju impianmu',style: TextStyle(fontSize: 24,color: Colors.black,fontFamily: "Lora" ),
              ),
              SizedBox(height: 70),
              SizedBox(
                height: 50,
                width: 340,
              child:  TextButton( 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login2()),
                  );
                },
                child: Text('Login',style: TextStyle(color: WarnaCustom.text1Color, fontSize: 17, )),
                style: ElevatedButton.styleFrom(
                backgroundColor: WarnaCustom.button1Color,
              ), 
              ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 355,
                height: 55,
              child:  TextButton( 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login2()),
                  );
                },
                child: Text('Sign up',style: TextStyle(color: WarnaCustom.text2Color, fontSize: 17, )),
                style: ElevatedButton.styleFrom(
                backgroundColor: WarnaCustom.button2Color, 
              ),
              ),
              ),
              
            ],
          )),),
    );
  }
}



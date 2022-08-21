import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 220),
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 32,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              //padding: EdgeInsets.only( right: 10, top: 200),
              child: Image.asset(
                  'assets/auth.png',
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  left: 35,
                  right: 35,
                  top: MediaQuery.of(context).size.height*0.67
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white70),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.amberAccent; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      // ElevatedButton.styleFrom(
                      //   primary: Colors.white70,
                      //   onPrimary: Colors.amber,// Shadow Color
                      // ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding : EdgeInsets.only( top: 10, bottom: 10),
                            child: Image.network("https://img.icons8.com/color/48/000000/google-logo.png"),
                          ),
                          Container(
                            padding : EdgeInsets.only(left:10, top: 5),
                            child: Text(
                              'Login with Google',
                              style: const TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width - 50, top: 30),
              child: IconButton(
                onPressed: (){
                  debugPrint('Icon Button');
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.amber,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:ecommareice/screens/forgetpassword.dart';
import 'package:ecommareice/screens/home.dart';
import 'package:ecommareice/screens/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Welcome back',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Muli'),
              ),
              Text(
                'sign in with  your eamil and password',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'or continue with social media',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 330,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            // label: Text('Eamil'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: ' Email',
                            labelStyle: TextStyle(
                                fontSize: 19,
                                fontFamily: 'Muli',
                                fontWeight: FontWeight.bold),
                            hintText: '  Enter your Eamil',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                            ),
                            suffixIcon: Icon(
                              Icons.email_outlined,
                              size: 30,
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            // label: Text('Eamil'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: ' Password',
                            labelStyle: TextStyle(
                                fontSize: 19,
                                fontFamily: 'Muli',
                                fontWeight: FontWeight.bold),
                            hintText: '  Enter your Password',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                            ),
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              size: 30,
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: val,
                              onChanged: (value) {},
                            ),
                            Text(
                              'Remember me ',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Muli',
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        TextButton(
                          child: Text(
                            'Forger password',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Muli',
                                color: Colors.grey),
                          ),
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Forgertpass()));
                          }),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      shape: StadiumBorder(),
                      color: Color.fromARGB(255, 255, 102, 0),
                      textColor: Colors.white,
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 22, fontFamily: 'Muli'),
                      ),
                      height: 50,
                      minWidth: 350,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/128/281/281764.png',
                          ),
                        ),
                        CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3128/3128304.png'),
                        ),
                        CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/733/733579.png'),
                        ),
                        SizedBox(
                          width: 20,
                          height: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Donot have an account?    ',
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => registerPage()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.orange),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

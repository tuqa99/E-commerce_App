import 'package:ecommareice/screens/register.dart';
import 'package:flutter/material.dart';

class Forgertpass extends StatefulWidget {
  const Forgertpass({super.key});

  @override
  State<Forgertpass> createState() => _ForgertpassState();
}

class _ForgertpassState extends State<Forgertpass> {
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
              Column(
                children: [
                  Text(
                    'Forget password',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Muli'),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'please enter your eamil and we will send',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    '  you a link to return  to your account',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 330,
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    TextField(
                        cursorWidth: 22,
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
                      height: 100,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      shape: StadiumBorder(),
                      color: Colors.orange,
                      textColor: Colors.white,
                      child: Text("Continue"),
                      height: 50,
                      minWidth: 330,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Donot have an account?    ',
                          style: TextStyle(
                              fontFamily: 'Muli',
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        TextButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => registerPage(),
                                  ));
                            }),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Muli',
                                fontSize: 16,
                              ),
                            ))
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
    ;
  }
}

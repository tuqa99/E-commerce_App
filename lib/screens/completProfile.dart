import 'package:ecommareice/screens/login.dart';
import 'package:flutter/material.dart';

class Comletprofile extends StatefulWidget {
  const Comletprofile({super.key});

  @override
  State<Comletprofile> createState() => _ComletprofileState();
}

class _ComletprofileState extends State<Comletprofile> {
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
                height: 22,
              ),
              Text(
                'Complete Profile',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Muli'),
              ),
              Text(
                'complete your details or countinue \n        with social media',
                style: TextStyle(color: Colors.grey),
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
                            labelText: ' First Name',
                            labelStyle: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Muli',
                            ),
                            hintText: '  Enter your First Name',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                            ),
                            suffixIcon: Icon(
                              Icons.person_outlined,
                              size: 32,
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
                            labelText: ' Last Name',
                            labelStyle: TextStyle(
                                fontSize: 19,
                                fontFamily: 'Muli',
                                fontWeight: FontWeight.bold),
                            hintText: '  Enter your Last Name',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                            ),
                            suffixIcon: Icon(
                              Icons.person_outline,
                              size: 32,
                            ))),
                    SizedBox(
                      height: 30,
                      width: 20,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: ' Phone Number',
                            labelStyle: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Muli',
                            ),
                            hintText: '  Enter your Phone Number',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                            ),
                            suffixIcon: Icon(
                              Icons.phone_android_outlined,
                              size: 32,
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: ' Adress',
                            labelStyle: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Muli',
                            ),
                            hintText: '  Enter your phone Adress',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                            ),
                            suffixIcon: Icon(
                              Icons.location_on_outlined,
                              size: 32,
                            ))),
                    SizedBox(
                      height: 60,
                      width: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
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
                      height: 30,
                      width: 20,
                    ),
                    Text(
                      'By Countinuing your confirm that you agree\n           with oour trem and condition',
                      style: TextStyle(color: Colors.grey),
                    ),
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

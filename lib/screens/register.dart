import 'package:ecommareice/screens/completProfile.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
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
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              'Register Account',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Complete your details or contiune\n           with scocial meadia ',
              style: TextStyle(
                  color: Color.fromARGB(255, 122, 121, 121),
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // label: Text('Eamil'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: 'Eamil',
                          labelStyle: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.bold),
                          hintText: '    Enter your eamil',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Muli',
                          ),
                          suffixIcon: Icon(
                            Icons.email_outlined,
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
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.bold),
                          hintText: '    Enter your password',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Muli',
                          ),
                          suffixIcon: Icon(
                            Icons.lock_outlined,
                            size: 32,
                          ))),
                  SizedBox(
                    height: 30,
                    width: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // label: Text('Eamil'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: ' Confirm Password',
                          labelStyle: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.bold),
                          hintText: '   Re-enter your password',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Muli',
                          ),
                          suffixIcon: Icon(
                            Icons.lock_outlined,
                            size: 32,
                          ))),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Comletprofile()));
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
                  radius: 8,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/128/281/281764.png',
                  ),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/128/3128/3128304.png'),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/128/733/733579.png'),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 33,
            ),
            Text(
              'By continuing your confirm that you agree',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      )),
    );
  }
}

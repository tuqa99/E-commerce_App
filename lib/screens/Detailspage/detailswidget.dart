import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:awesome_icons/awesome_icons.dart';

class imagesiteam extends StatefulWidget {
  const imagesiteam({super.key});

  @override
  State<imagesiteam> createState() => _imagesiteamState();
}

class _imagesiteamState extends State<imagesiteam> {
  String imageitem = 'assets/images/ps4_console_white_1.png';
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Color.fromRGBO(235, 233, 233, 1),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              imageitem,
            ),
            height: 190,
            width: 250,
          ),
          Container(
            alignment: Alignment.center,
            height: 70,
            child: Center(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 45),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, right: 8, bottom: 8, left: 8),
                    child: Container(
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(
                            style: !isClicked
                                ? BorderStyle.solid
                                : BorderStyle.none,
                          )),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isClicked = !isClicked;
                            imageitem =
                                'assets/images/ps4_console_white_${index + 1}.png';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/ps4_console_white_${index + 1}.png')),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Detailsieam extends StatefulWidget {
  const Detailsieam({super.key});

  @override
  State<Detailsieam> createState() => _DetailsieamState();
}

class _DetailsieamState extends State<Detailsieam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 280),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Wirless Controller For PS4 TM',
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'Muli'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.16,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 225, 241),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 233, 36, 22),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                'Wireless Controller for PS4  gives you what\nyou want in your gaming from over precision \ncontrol your games to sharing...',
                style: TextStyle(
                    color: Color.fromARGB(255, 175, 169, 169),
                    height: 1.7,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 20),
              child: Text(
                'See More Detail >',
                style: TextStyle(
                    color: Color.fromARGB(241, 240, 111, 5),
                    height: 1.7,
                    fontSize: 15,
                    fontFamily: 'Muli'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Colorchoieses extends StatefulWidget {
  const Colorchoieses({super.key});

  @override
  State<Colorchoieses> createState() => _ColorchoiesesState();
}

class _ColorchoiesesState extends State<Colorchoieses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 500),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          color: Color.fromRGBO(235, 233, 233, 1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 20,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 20,
                      ),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Color.fromARGB(255, 226, 218, 140),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 20,
                      ),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.orangeAccent,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                      right: 60,
                      left: 60,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Color.fromARGB(255, 255, 141, 10),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

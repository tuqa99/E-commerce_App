import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color haertColor = Color.fromARGB(255, 223, 218, 218);
  List<String> myIcons = [
    'assets/icons/Flash Icon.svg',
    'assets/icons/Bill Icon.svg',
    'assets/icons/Game Icon.svg',
    'assets/icons/Gift Icon.svg',
    'assets/icons/Discover.svg'
  ];

  List<String> mytitles = [
    'Flash \n Deal',
    'Bill',
    'Game',
    'Daily\n Gift',
    'More'
  ];
  List<String> specaialImage = [
    "assets/images/Image Banner 2.png",
    "assets/images/Image Banner 3.png"
  ];
  List<String> specialTitle = ['Smart phone ', 'Fastion '];
  List<String> specialSubTitle = ['    18 Brand', '    24 Brands'];
  List<String> imageIteams = [
    'assets/images/Image Popular Product 1.png',
    'assets/images/Image Popular Product 2.png',
    'assets/images/Image Popular Product 3.png'
  ];
  List<String> productDiscreabtion = [
    'Wirless Controler \n for PS4',
    'Nike Sport Wihte-\nMan Pant',
    'Bicycle helmet'
  ];
  List<String> price = ['\$64.99 ', '\$50.5', '\$36.99'];
  List<Color> mycolor = [
    Color.fromARGB(255, 223, 218, 218),
    Color.fromARGB(255, 223, 218, 218),
    Color.fromARGB(255, 223, 218, 218)
  ];
  List<Color> Mycolor = [
    Colors.pinkAccent,
    Colors.pinkAccent,
    Colors.pinkAccent
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Shop Icon.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Heart Icon.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/User Icon.svg'))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      // Add a search icon or button outside the border of the search bar

                      Expanded(
                        // Use a Material design search bar
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 241, 238, 238),
                              prefixIcon: Icon(Icons.search_outlined),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 241, 238, 238),
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: 'Search Product',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Muli'),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 16)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 241, 238, 238),
                          child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 241, 238, 238),
                            child: Badge(
                              position:
                                  BadgePosition.topEnd(top: -20, end: -20),
                              badgeContent: Text('3'),
                              child: SvgPicture.asset('assets/icons/Bell.svg'),
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 57, 29, 134),
                        ),
                        height: 90,
                        width: 360,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '        A Summer Surpise',
                              style: TextStyle(
                                  color: Color.fromARGB(218, 247, 241, 241),
                                  fontFamily: 'Muli'),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('    Cashback 20%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Muli',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: myIcons.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, left: 10, right: 7),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 255, 237, 220),
                                  ),
                                  height: 55,
                                  width: 60,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      myIcons[index],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                mytitles[index],
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 25, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            'Special For you',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            'see more',
                            style: TextStyle(
                                color: Color.fromARGB(255, 179, 176, 176)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 25),
                            child: Container(
                              width: 280,
                              height: 80,
                              decoration: BoxDecoration(
                                // color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.3),
                                      BlendMode.darken),
                                  image: AssetImage(specaialImage[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 7),
                                    child: Text(
                                      specialTitle[index],
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontFamily: 'Muli',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    specialSubTitle[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Muli',
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 25, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            'Popular product',
                            style: TextStyle(fontSize: 20, fontFamily: 'Muli'),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            'see more',
                            style: TextStyle(
                                color: Color.fromARGB(255, 179, 176, 176)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageIteams.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color:
                                            Color.fromARGB(255, 243, 237, 237)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Image.asset(imageIteams[index]),
                                    ),
                                  ),
                                ),
                                Text(
                                  productDiscreabtion[index],
                                  style: TextStyle(fontSize: 15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 23,
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            mycolor[index] = Mycolor[index];
                                          });
                                        },
                                        icon: Icon(Icons.favorite_sharp),
                                        color: mycolor[index]),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

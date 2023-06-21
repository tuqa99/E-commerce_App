import 'package:ecommareice/screens/register.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // List<BannerModel> listBanners = [
  //   BannerModel(imagePath: 'assets/images/splash_1.png', id: "1"),
  //   BannerModel(imagePath: 'assets/images/splash_2.png', id: "2"),
  //   BannerModel(imagePath: 'assets/images/splash_1.png', id: "3"),

  // ];
  List myImages = [
    'assets/images/splash_1.png',
    'assets/images/splash_2.png',
    'assets/images/splash_3.png'
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'TOKOTO',
                style: TextStyle(
                    fontFamily: 'Muli',
                    color: Color.fromARGB(255, 255, 123, 0),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Welcome to TOKOTO, Let' 's shop!',
                style: TextStyle(
                    color: Color.fromARGB(255, 148, 147, 147),
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 250,
                child: PageView.builder(
                  controller: controller,
                  itemCount: myImages.length,
                  itemBuilder: (context, index) {
                    return Image.asset(myImages[index]);
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: myImages.length,
                  effect: ExpandingDotsEffect(
                      dotColor: Color.fromARGB(255, 218, 217, 217),
                      activeDotColor: Color.fromARGB(255, 255, 153, 0),
                      radius: 10.0,
                      dotWidth: 6,
                      dotHeight: 6)),
              SizedBox(
                height: 130,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => registerPage()));
                },
                shape: StadiumBorder(),
                color: Color.fromARGB(255, 255, 102, 0),
                textColor: Colors.white,
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 22, fontFamily: 'Muli'),
                ),
                height: 50,
                minWidth: 340,
              )
            ],
          ),
        ),
      ),
    );
  }
}

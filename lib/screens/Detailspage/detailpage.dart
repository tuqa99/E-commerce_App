import 'dart:ffi';

import 'package:ecommareice/screens/Detailspage/detailswidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(235, 233, 233, 1),
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 2,
              backgroundColor: Colors.white,
              child: SvgPicture.asset('assets/icons/arrow_right.svg'),
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '4.8',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 8, bottom: 8),
                        child: Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
        body: Container(
          color: Color.fromRGBO(235, 233, 233, 1),
          child: Stack(
            children: [
              imagesiteam(),
              Detailsieam(),
              Colorchoieses(),
            ],
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Add a search icon or button outside the border of the search bar
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),
              Expanded(
                // Use a Material design search bar
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    // Add a clear button to the search bar
                    suffixIcon:
                        IconButton(icon: Icon(Icons.clear), onPressed: () {}),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

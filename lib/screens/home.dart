import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          title: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 216, 214, 214),
              prefixIcon: Icon(Icons.search_outlined),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              hintText: 'Search Product',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 216, 214, 214),
                child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 216, 214, 214),
                child: SvgPicture.asset('assets/icons/Bell.svg'),
              ),
            )
          ],
        ),
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

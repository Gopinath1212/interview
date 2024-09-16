import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final PageController _pageController = PageController();
@override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all()
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Stack(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage("assets/boy-png-29779.png"),

                      ),
                      borderRadius: BorderRadius.circular(70)
                    ),
                  ),
                  const Positioned(
                    left: 330,
                    top: 50,
                    child: Icon(Icons.add_alert,color: Colors.white,size: 45,),
                  ),

                ],

                ),
                  const Text("Hi, John Doe! ...",style: TextStyle(fontSize: 20,color: Colors.white),),
                  const Text("Your Point Balance",style: TextStyle(color: Colors.white30),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("36.46",style: TextStyle(fontSize: 25,color: Colors.white),),
                      Text("=",style: TextStyle(fontSize: 18,),),
                      Text("3.64",style: TextStyle(fontSize: 25,color: Colors.white),),


                    ],
                  ),
                  Text("View transaction history >",style: TextStyle(fontSize: 16,color: Colors.white),)
          ],
              ),
            ),
            Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/earn.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Offers for you"),
                  Text("See All",style: TextStyle(color: Colors.red),)
                ],
              ),
            ),




            // SmoothPageIndicator(
            //   controller: controller,
            //   count:  6,
            //   axisDirection: Axis.vertical,
            //   effect:  SlideEffect(
            //       spacing:  8.0,
            //       radius:  4.0,
            //       dotWidth:  24.0,
            //       dotHeight:  16.0,
            //       paintStyle:  PaintingStyle.stroke,
            //       strokeWidth:  1.5,
            //       dotColor:  Colors.grey,
            //       activeDotColor:  Colors.indigo
            //   ),
            // )

          ],
        ),

      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none, // Allows the FAB to overlap the bottom bar
        children: [
          BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_offer),
                label: 'Offers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Benifits',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more),
                label: 'More',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          ),

          Positioned(
              bottom: 0,
              left: MediaQuery.of(context).size.width / 2 - 20, // Center horizontally
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    image: DecorationImage(
                        image: AssetImage("assets/money-bags-3404346_1280.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              )
          ),
        ],
      ),
    );
  }


}

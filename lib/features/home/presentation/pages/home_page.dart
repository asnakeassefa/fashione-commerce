import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.sizeOf(context).width;
    var deviceHeight = MediaQuery.sizeOf(context).height;
    List<String> catagory = [
      'T-shirt',
      'Pant',
      'Dress',
      'Jacket',
    ];

    List<String> status = [
      'All',
      'Newest',
      'Popular',
      'Man',
      'Women',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              header(deviceWidth),
              const SizedBox(height: 30),
              customSearch(deviceWidth),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    banner(deviceHeight, deviceWidth),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Catagory",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('See All'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        // shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const CircleAvatar(
                                radius: 35,
                                backgroundColor: Color(0xfff7f2ed),
                                child: Icon(
                                  Icons.man,
                                  color: Colors.brown,
                                  size: 50,
                                ),
                              ),
                              Text(catagory[index]),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 30);
                        },
                        itemCount: catagory.length,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Flash Sale",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text('Closing in'),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 8),
                                    child: Center(
                                      child: Text(
                                        status.elementAt(index),
                                        style: TextStyle(
                                          fontSize: deviceWidth * 0.045,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(width: 30);
                              },
                              itemCount: status.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: deviceHeight * 0.5,
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const Card(
                            elevation: 2,
                            color: Colors.grey,
                            child: SizedBox(height: 200, width: 200),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        selectedItemColor: Colors.brown,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
        snakeViewColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Color(0xff1f2029),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  SizedBox banner(double deviceHeight, double deviceWidth) {
    return SizedBox(
      height: deviceHeight * 0.30,
      child: Stack(
        children: [
          SizedBox(
            height: deviceHeight * 0.25,
            child: PageView(
              controller: _pageController,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: deviceWidth * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: deviceWidth * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: deviceWidth * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: _pageController,
              effect: WormEffect(
                dotHeight: deviceHeight * 0.013,
                dotWidth: deviceHeight * 0.013,
                activeDotColor: Colors.brown,
              ),
              count: 3,
            ),
          )
        ],
      ),
    );
  }

  Row customSearch(double deviceWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: deviceWidth * 0.75,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(30), right: Radius.circular(30))),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              prefixIcon: Icon(
                Icons.search,
                size: (30),
                color: Colors.grey,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        const CircleAvatar(
          radius: 28,
          backgroundColor: Colors.brown,
          child: Icon(
            Icons.tune_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Row header(double deviceWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style:
                  TextStyle(color: Colors.grey, fontSize: deviceWidth * 0.045),
            ),
            Row(
              children: [
                Icon(Icons.location_on,
                    color: Colors.brown, size: deviceWidth * 0.07),
                Text(
                  'Addis Ababa, ETH',
                  style: TextStyle(fontSize: deviceWidth * 0.05),
                ),
                Icon(Icons.keyboard_arrow_down, size: deviceWidth * 0.07),
              ],
            )
          ],
        ),
        const CircleAvatar(
          backgroundColor: Color(0xfff1f1f1),
          radius: 22,
          child: Icon(
            Icons.notifications_rounded,
            size: 30,
          ),
        )
      ],
    );
  }
}

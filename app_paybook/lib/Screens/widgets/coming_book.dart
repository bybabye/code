
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ComingBook extends StatelessWidget {
  ComingBook({Key? key}) : super(key: key);
  final upcoming = [
    'assets/images/upcoming3.png',
    'assets/images/upcoming.png',
    'assets/images/upcoming2.png',
  ];

  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: upcoming
                .map((e) => Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              e,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.black,
                                  Colors.black45,
                                  Colors.black12,
                                  Colors.black.withOpacity(0),
                                ]),
                          ),
                        ),
                        Positioned(
                          left: size.width * 0.09,
                          top: size.height * 0.03,
                          child: const Text(
                            "Upcoming Book",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: size.width * 0.09,
                          top: size.height * 0.07,
                          child: const Text(
                            "30+ new book coming with various \ngames are waiting for you",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ))
                .toList(),
          ),
          Positioned(
            left: size.width * 0.09,
            bottom: size.height * 0.02,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: upcoming.length,
              effect: const ExpandingDotsEffect(
                expansionFactor: 4,
                dotWidth: 8,
                dotHeight: 8,
                spacing: 4,
                activeDotColor: Colors.white,
              ),
              onDotClicked: (index) {
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              },
            ),
          ),
          
        ],
      ),
    );
  }
}

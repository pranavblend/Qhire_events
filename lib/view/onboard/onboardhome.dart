import 'package:flutter/material.dart';
import 'package:jobminiproject/view/onboard/user.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Introscreen1.dart';
import 'introscreen2.dart';
import 'introscreen3.dart';

class Onboardscreenui extends StatefulWidget {
  const Onboardscreenui({super.key});

  @override
  State<Onboardscreenui> createState() => _OnboardscreenuiState();
}

class _OnboardscreenuiState extends State<Onboardscreenui>
    with SingleTickerProviderStateMixin {
  PageController _controller = PageController();
  bool text1 = true;
  bool text2 = false;
  bool text3 = false;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    // Apply curved animation
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutExpo,
      // curve: Curves.easeInOutExpo,
      // curve: Curves.easeInOutCirc,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                text1 = (index == 0);
                text2 = (index == 1);
                text3 = (index == 2);
              });
              _animationController.reset();
              _animationController.forward();
            },
            controller: _controller,
            children: [
              Introscreen1(),
              Introscreen2(),
              Introscreen3(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                  border: Border.all(
                      color: Color.fromRGBO(232, 143, 27, 1), width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 65),

                    // First line
                    AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return Opacity(
                          opacity: _animation.value,
                          child: Transform.translate(
                            offset: Offset(0, 30 * (1 - _animation.value)),
                            child: child,
                          ),
                        );
                      },
                      child: Text(
                        text1 ?
                        "Hi!"
                            : text2 ?
                        "Together we can"
                                : "Easy to figure out!",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Second line
                    AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return Opacity(
                          opacity: _animation.value,
                          child: Transform.translate(
                            offset: Offset(
                                0, 30 * (1 - _animation.value)),
                            child: child,
                          ),
                        );
                      },
                      child: Text(
                        text1
                            ? "Welcome to CareerHub! \nLook for your dream job, with us"
                            : text2
                                ? "Find a suitable job without even \nleaving home"
                                : "No need to delve into it for a long time, \neverything is clear and simple.",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: 20),

                    text3
                        ? GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Onboarduserui()));
                            },
                            child: Container(
                              height: size.height * .050,
                              width: size.width * .88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromRGBO(232, 143, 27, 1),
                              ),
                              child: Center(
                                child: Text(
                                  "Get Started!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOutCubicEmphasized);
                            },
                            child: Container(
                              height: size.height * .050,
                              width: size.width * .88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromRGBO(232, 143, 27, 1),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),

                    SizedBox(height: 20),

                    if (text1 || text2)
                      Container(
                        height: size.height * .050,
                        width: size.width * .88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              _controller.jumpToPage(2);
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    if (text3)
                      SizedBox(
                          height: size.height *
                              .050), // Placeholder to maintain layout
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 140),
            alignment: Alignment(-.4, 0.34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    expansionFactor: 5,
                    spacing: 10.0,
                    radius: 25.0,
                    dotWidth: 8.0,
                    dotHeight: 7.0,
                    paintStyle: PaintingStyle.fill,
                    activeDotColor: Color.fromRGBO(232, 143, 27, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

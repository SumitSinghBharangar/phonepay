import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;
  final double _imageHeight = 275;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Color getAppBarColor() {
    double progress = (_scrollOffset / 180).clamp(0.0, 1.0);
    return Color.lerp(Colors.transparent,
        Theme.of(context).appBarTheme.backgroundColor, progress)!;
  }

  @override
  Widget build(BuildContext context) {
    double parallaxOffset = _scrollOffset * 0.4;
    return Scaffold(
      body: Stack(
        children: [
          // Parallax image that scrolls up slowly

          Positioned(
            top: 0,
            left: 0,
            child: Transform.translate(
              offset: Offset(0, -parallaxOffset),
              child: SizedBox(
                height: _imageHeight,
                child: Image.network(
                  'https://www.bigfootdigital.co.uk/wp-content/uploads/2020/07/image-optimisation-scaled.jpg',
                  height: _imageHeight, // Replace with your image
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Foreground scrollable content
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                SizedBox(height: _imageHeight),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: _hedingText(
                          "Payment Transfer",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                radius: 24,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "To Mobile \nNumber",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                radius: 24,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "To Bank & \nSelf A/c",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                radius: 24,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Refer & get\nupto ₹200",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                radius: 24,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Check \nBalance",
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container()
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: kToolbarHeight + 30,
            width: double.infinity,
            color: getAppBarColor(),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: kToolbarHeight - 35),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 211, 48),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "S",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _hedingText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    );
  }
}

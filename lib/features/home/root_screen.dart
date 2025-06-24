import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:phonepay/features/home/homepage.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({
    super.key,
  });

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final List<Widget> screenList = [
    Homepage(),
    Homepage(),
    Homepage(),
    Homepage(),
    Homepage(),
  ];
  int selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Homepage();
  @override
  Widget build(BuildContext context) {
    Color? selectedItemColor =
        Theme.of(context).bottomNavigationBarTheme.selectedItemColor;
    Color? unSelectedItemColor =
        Theme.of(context).bottomNavigationBarTheme.unselectedItemColor;
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const Homepage();
                    selectedIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.home_2,
                      color: selectedIndex == 0
                          ? selectedItemColor
                          : unSelectedItemColor,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: selectedIndex == 0
                            ? selectedItemColor
                            : unSelectedItemColor,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const Homepage();
                    selectedIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search_sharp,
                      color: selectedIndex == 1
                          ? selectedItemColor
                          : unSelectedItemColor,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: selectedIndex == 1
                            ? selectedItemColor
                            : unSelectedItemColor,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.purple,
                  child: Center(
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const Homepage();
                    selectedIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.notification,
                      color: selectedIndex == 2
                          ? selectedItemColor
                          : unSelectedItemColor,
                    ),
                    Text(
                      "Alert",
                      style: TextStyle(
                        color: selectedIndex == 2
                            ? selectedItemColor
                            : unSelectedItemColor,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const Homepage();
                    selectedIndex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.clock,
                      color: selectedIndex == 3
                          ? selectedItemColor
                          : unSelectedItemColor,
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                        color: selectedIndex == 3
                            ? selectedItemColor
                            : unSelectedItemColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/presentation/home/widgets/background_card.dart';
import 'package:dmflix/presentation/home/widgets/number_tile_card.dart';
import 'package:dmflix/presentation/widgets/main_card.dart';
import 'package:flutter/rendering.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCardWidget(size: size),
                    MainHomeCard(
                      size: size,
                      title: "Released in the past year",
                    ),
                    MainHomeCard(size: size, title: "Tranding Now"),
                    NumberTileCard(size: size),
                    MainHomeCard(size: size, title: "Tense Dramas"),
                    MainHomeCard(size: size, title: "South Indian cinema"),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: size.height * .15,
                      color: Colors.black.withValues(alpha: .7),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://static.vecteezy.com/system/resources/previews/017/396/804/non_2x/netflix-mobile-application-logo-free-png.png",
                                width: size.width * .12,
                                height: size.height * .1,
                              ),
                              const Spacer(),
                              Icon(Icons.cast, color: whitecolor, size: 30),
                              kwidth10,
                              Container(
                                width: size.width * .09,
                                height: size.height * .035,
                                color: Colors.blue,
                              ),
                              kwidth10,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Tv Shows",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Movies",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Categories",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    : kheight20,
              ],
            ),
          );
        },
      ),
    );
  }
}

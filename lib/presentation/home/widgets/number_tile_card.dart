import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/presentation/home/widgets/number_card.dart';
import 'package:dmflix/presentation/widgets/main_title.dart';

class NumberTileCard extends StatelessWidget {
  const NumberTileCard({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 Tv Shows In India Today"),
        LimitedBox(
          maxHeight: size.width * .5,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: NumberCard(size: size, index: index),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

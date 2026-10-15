import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/presentation/widgets/home_card.dart';
import 'package:dmflix/presentation/widgets/main_title.dart';

class MainHomeCard extends StatelessWidget {
  const MainHomeCard({super.key, required this.title, required this.size});
  final String title;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MainTitle(title: title),
        LimitedBox(
          maxHeight: size.width * .5,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: HomeCard(size: size),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
